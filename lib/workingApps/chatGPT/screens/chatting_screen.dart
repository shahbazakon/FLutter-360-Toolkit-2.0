import 'dart:async';

import 'package:chat_gpt_flutter/chat_gpt_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/main.dart';
import 'package:prokit_flutter/main/screens/ProKitLauncher.dart';
import 'package:prokit_flutter/main/utils/AppColors.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';

import 'package:prokit_flutter/workingApps/chatGPT/components/commonIconButton.dart';
import 'package:prokit_flutter/workingApps/chatGPT/components/voice_search_component.dart';
import 'package:prokit_flutter/workingApps/chatGPT/models/question_answer_model.dart';
import 'package:prokit_flutter/workingApps/chatGPT/screens/empty_screen.dart';
import 'package:prokit_flutter/workingApps/chatGPT/utils/colors.dart';
import 'package:prokit_flutter/workingApps/chatGPT/utils/constant.dart';
import 'package:prokit_flutter/workingApps/chatGPT/utils/images.dart';
import 'package:share_plus/share_plus.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../components/chat_message_widget.dart';
import '../utils/common.dart';

class ChattingScreen extends StatefulWidget {
  static String tag = '/chatgpt';

  final bool isDirect;

  ChattingScreen({this.isDirect = false});

  @override
  _ChattingScreenState createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  ChatGpt chatGpt = ChatGpt(apiKey: getStringAsync(CHAT_GPT_API_KEY));

  ScrollController scrollController = ScrollController();

  TextEditingController msgController = TextEditingController();

  SpeechToText speech = SpeechToText();

  StreamSubscription<StreamCompletionResponse>? streamSubscription;

  final List<QuestionAnswerModel> questionAnswers = [];
  List<String> chipList = [
    'Definitions',
    'Synonyms',
    'Antonyms',
  ];

  int adCount = 0;
  int selectedIndex = -1;

  String lastError = "";
  String lastStatus = "";
  String selectedText = '';
  String question = '';

  bool isBannerLoad = false;
  bool isShowOption = false;
  bool isSelectedIndex = false;
  bool isScroll = false;

  InterstitialAd? interstitialAd;
  BannerAd? myBanner;

  @override
  void initState() {
    super.initState();
    init();
    initSpeechState();
  }

  void init() async {
    afterBuildCreated(() {
      setStatusBarColor(appStore.isDarkModeOn ? replyMsgBgColor : Colors.white);
    });

    if (isMobile) {
      _createInterstitialAd();

      myBanner = loadBannerAd()..load();
    }
  }

  Future<void> initSpeechState() async {
    await speech.initialize(onError: errorListener, onStatus: statusListener);
  }

  void startListening() {
    lastError = "";
    speech.listen(onResult: resultListener, pauseFor: Duration(seconds: 4));

    setState(() {});
  }

  void stopListening() {
    speech.stop();
    setState(() {});
  }

  void cancelListening() {
    speech.cancel();
    setState(() {});
  }

  void resultListener(SpeechRecognitionResult result) {
    log('Speech result=== $result');
    log('Speech result=== ${result.recognizedWords.capitalizeFirstLetter()}');
    msgController.text = "${result.recognizedWords.capitalizeFirstLetter()} ?";
    setState(() {});
  }

  void errorListener(SpeechRecognitionError error) {
    setState(() {
      lastError = "${error.errorMsg} - ${error.permanent}";
    });
  }

  void statusListener(String status) {
    setState(() {
      lastStatus = "$status";
    });
  }

  BannerAd loadBannerAd() {
    return BannerAd(
      adUnitId: getBannerAdUnitId()!,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(onAdLoaded: (ad) {
        isBannerLoad = true;
        setState(() {});
      }),
    );
  }

  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: getInterstitialAdUnitId(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print('$ad loaded');
          interstitialAd = ad;
          interstitialAd!.setImmersiveMode(true);
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error.');
          interstitialAd = null;
          _createInterstitialAd();
        },
      ),
      request: AdRequest(),
    );
  }

  void _showInterstitialAd() {
    if (interstitialAd == null) {
      print('Warning: attempt to show interstitial before loaded.');
      return;
    }

    interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) => print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    interstitialAd!.show();
    interstitialAd = null;
    adCount = 0;
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  void sendMessage() async {
    hideKeyboard(context);

    if (selectedText.isNotEmpty) {
      question = selectedText + msgController.text;
      setState(() {});
    } else {
      question = msgController.text;
      setState(() {});
    }

    log('Question=== $question');
    setState(() {
      msgController.clear();
      questionAnswers.insert(0, QuestionAnswerModel(question: question, answer: StringBuffer(), isLoading: true, smartCompose: selectedText));
    });

    ChatCompletionRequest testRequest = ChatCompletionRequest(
      stream: true,
      maxTokens: 4000,
      messages: [Message(role: Role.user.name, content: question)],
      model: ChatGptModel.gpt35Turbo,
    );

    await _chatStreamResponse(testRequest);

    if (adCount == showAdCount) {
      _showInterstitialAd();
    } else {
      adCount++;
    }

    log("========== AD count $adCount");
    questionAnswers[0].isLoading = false;
    setState(() {});
  }

  Future<dynamic> _chatStreamResponse(ChatCompletionRequest request) async {
    streamSubscription?.cancel();

    try {
      log('ChatGPT Api Key==== ${chatGpt.apiKey}');
      final stream = await chatGpt.createChatCompletionStream(request);
      log("request ${request.messages.map((e) => "${e.role} : : ${e.content}")}");

      streamSubscription = stream?.listen((event) {
        setState(() {
          if (event.streamMessageEnd) {
            streamSubscription?.cancel();
          } else {
            return questionAnswers.first.answer!.write(event.choices?.first.delta?.content);
          }
        });
      });
    } catch (error) {
      setState(() {
        questionAnswers.first.answer!.write("Too many requests please try again");
      });
      log("Error occurred: $error");
    }
  }

  void showDialog() {
    showConfirmDialogCustom(
      context,
      title: 'Do you want to clear the conversations ?',
      positiveText: 'Yes',
      positiveTextColor: Colors.white,
      negativeText: 'No',
      dialogType: DialogType.CONFIRMATION,
      onAccept: (p0) {
        questionAnswers.clear();
      },
    );
  }

  void share(BuildContext context, {required List<QuestionAnswerModel> questionAnswers, RenderBox? box}) {
    String getFinalString = questionAnswers.map((e) => "Q: ${e.question}\nChatGPT: ${e.answer.toString().trim()}\n\n").join(' ');
    Share.share(getFinalString, sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }

  @override
  void dispose() {
    setStatusBarColor(appStore.scaffoldBackground!);
    speech.stop();
    msgController.dispose();
    streamSubscription?.cancel();

    interstitialAd?.dispose();

    myBanner?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        'ChatGPT',
        elevation: 0,
        color: appStore.isDarkModeOn ? replyMsgBgColor : transparentColor,
        backWidget: IconButton(
          icon: Icon(Icons.arrow_back, color: appStore.isDarkModeOn ? Colors.white : Colors.black),
          visualDensity: VisualDensity.compact,
          onPressed: () {
            if (widget.isDirect.validate()) {
              ProKitLauncher().launch(context, isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
            } else {
              finish(context);
            }
          },
        ),
        actions: [
          CommonIconButton(
            icon: Icons.restart_alt,
            toolTip: 'Clear Conversation',
            onPressed: () {
              showDialog();
            },
          ).visible(questionAnswers.isNotEmpty),
          isIOS
              ? Builder(builder: (context) {
                  return CommonIconButton(
                    icon: Icons.share,
                    iconSize: 20,
                    toolTip: 'Share Conversation',
                    onPressed: () {
                      final box = context.findRenderObject() as RenderBox?;
                      share(context, questionAnswers: questionAnswers, box: box);
                    },
                  ).visible(questionAnswers.isNotEmpty);
                })
              : CommonIconButton(
                  icon: Icons.share,
                  iconSize: 20,
                  toolTip: 'Share Conversation',
                  onPressed: () {
                    final box = context.findRenderObject() as RenderBox?;
                    share(context, questionAnswers: questionAnswers, box: box);
                  },
                ).visible(questionAnswers.isNotEmpty)
        ],
      ),
      bottomSheet: VoiceSearchComponent().visible(speech.isListening),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(chat_default_bg_image).image,
                fit: BoxFit.cover,
                colorFilter: appStore.isDarkModeOn
                    ? ColorFilter.mode(context.scaffoldBackgroundColor, BlendMode.multiply)
                    : ColorFilter.mode(
                        chatGPT_chatScreen_colorFiler.withAlpha(180),
                        BlendMode.overlay,
                      ),
              ),
            ),
          ),
          Container(
            height: context.height(),
            width: context.width(),
            margin: EdgeInsets.only(bottom: 66 + (isBannerLoad ? AdSize.banner.height : 0) + (isShowOption ? 50 : 0)),
            padding: EdgeInsets.only(left: 16, right: 16),
            child: ListView.separated(
              separatorBuilder: (_, i) => Divider(color: Colors.transparent),
              reverse: true,
              padding: EdgeInsets.only(bottom: 8, top: 16),
              controller: scrollController,
              itemCount: questionAnswers.length,
              itemBuilder: (_, index) {
                QuestionAnswerModel data = questionAnswers[index];

                String answer = data.answer.toString().trim();

                return ChatMessageWidget(answer: answer, data: data, isLoading: data.isLoading.validate());
              },
            ),
          ),
          if (questionAnswers.validate().isEmpty)
            EmptyScreen(
              isScroll: isScroll,
              onTap: (value) {
                msgController.text = value;
                setState(() {});
              },
            ).center(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                if (isShowOption)
                  Wrap(
                    spacing: 16,
                    children: List.generate(chipList.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == selectedIndex) {
                            isSelectedIndex = !isSelectedIndex;
                          }

                          selectedIndex = index;

                          if (isSelectedIndex && index == selectedIndex) {
                            selectedText = '${chipList[index]} of ';
                          } else {
                            selectedText = '';
                          }

                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: boxDecorationDefault(
                            borderRadius: radius(20),
                            color: appStore.isDarkModeOn
                                ? (index == selectedIndex && isSelectedIndex)
                                    ? Colors.white
                                    : replyMsgBgColor.withAlpha(90)
                                : (index == selectedIndex && isSelectedIndex)
                                    ? Colors.white
                                    : appColorPrimary.withAlpha(20),
                          ),
                          child: Text(chipList[index],
                              style: primaryTextStyle(
                                size: 14,
                                color: appStore.isDarkModeOn
                                    ? (index == selectedIndex && isSelectedIndex)
                                        ? Colors.black
                                        : Colors.white
                                    : appColorPrimary,
                              )),
                        ),
                      );
                    }),
                  ),
                16.height,
                Row(
                  children: [
                    AppTextField(
                      textFieldType: TextFieldType.MULTILINE,
                      controller: msgController,
                      minLines: 1,
                      maxLines: 5,
                      cursorColor: appStore.isDarkModeOn ? Colors.white : Colors.black,
                      keyboardType: TextInputType.multiline,
                      decoration: inputDecoration(
                        context,
                        label: 'How can i help you!...',
                        prefixIcon: IconButton(
                          icon: Icon(Icons.mic, color: appStore.isDarkModeOn ? Colors.grey : null),
                          onPressed: () {
                            startListening();
                          },
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isShowOption ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                            color: appStore.isDarkModeOn ? Colors.grey : null,
                          ),
                          onPressed: () {
                            isShowOption = !isShowOption;

                            if (isShowOption == false) {
                              isSelectedIndex = false;
                              selectedText = '';
                            }

                            setState(() {});
                          },
                        ),
                      ),
                      onFieldSubmitted: (s) {
                        sendMessage();
                      },
                      onTap: () {
                        isScroll = true;
                        setState(() {});
                      },
                    ).expand(),
                    16.width,
                    Container(
                      decoration: boxDecorationDefault(
                        shape: BoxShape.circle,
                        color: appColorPrimary,
                        boxShadow: defaultBoxShadow(blurRadius: 0, shadowColor: Colors.transparent),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.send, size: 16, color: Colors.white),
                        onPressed: () {
                          if (msgController.text.isNotEmpty) {
                            sendMessage();
                          }
                        },
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
                16.height,
                if (isMobile)
                  AdWidget(ad: myBanner!).withSize(
                      width: myBanner!.size.width.toDouble(),
                      height: isIOS
                          ? myBanner!.size.height.toDouble()
                          : isBannerLoad
                              ? 50
                              : 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
