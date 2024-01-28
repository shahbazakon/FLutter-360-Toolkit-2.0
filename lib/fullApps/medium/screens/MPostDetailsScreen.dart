import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/medium/utils/MColors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MPostDetailsScreen extends StatefulWidget {
  static String tag = '/MPostDetailsScreen';

  @override
  MPostDetailsScreenState createState() => MPostDetailsScreenState();
}

class MPostDetailsScreenState extends State<MPostDetailsScreen> with SingleTickerProviderStateMixin {
  WebViewController _webViewController = WebViewController();
  double? contentHeight = 0;

  ScrollController _scrollController = ScrollController();
  bool isScrollingDown = false;
  bool _show = true;

  @override
  void initState() {
    super.initState();
    //if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    myScroll();
    init();
  }

  init() async {
    String fileText = await rootBundle.loadString("assets/medium/mediumhtmlpage.html");
    _webViewController.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) async {
          if (_webViewController != null) {
            contentHeight = (await _webViewController.runJavaScriptReturningResult("document.documentElement.scrollHeight;")).toString().toDouble();
            print("Height : $contentHeight");
            setState(() {});
          }
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );

    _webViewController.loadRequest(Uri.dataFromString(fileText, mimeType: 'text/html', encoding: Encoding.getByName('utf-8')));

    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  void showBottomContainer() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomContainer() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          hideBottomContainer();
        }
      }
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          showBottomContainer();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mGreyColor,
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: context.width(),
        height: _show ? 50 : 0,
        color: black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(icon: Icon(MaterialCommunityIcons.hand_okay), onPressed: () {}, color: Colors.grey),
                IconButton(icon: Icon(MaterialCommunityIcons.bookmark_outline), onPressed: () {}, color: Colors.grey),
                IconButton(icon: Icon(MaterialCommunityIcons.share_variant), onPressed: () {}, color: Colors.grey),
              ],
            ),
            IconButton(icon: Icon(FontAwesome.sort_alpha_asc), onPressed: () {}, color: Colors.grey),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: white),
          onPressed: () {
            finish(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: SizedBox(
          height: contentHeight != null ? contentHeight : 300,
          child: _webViewController != null
              ? WebViewWidget(
                  controller: _webViewController,
                  //initialUrl: "about:blank",
                  /*onWebViewCreated: (WebViewController aWebViewController) {
                    _webViewController = aWebViewController;
                    _loadHtmlFromAssets();
                  },*/
                  /*onPageFinished: (_) async {
                    if (_webViewController != null) {
                      contentHeight = double.tryParse(await _webViewController.evaluateJavascript("document.documentElement.scrollHeight;"));
                      print("Height : $contentHeight");
                      setState(() {});
                    }
                  },*/
                  //javascriptMode: JavascriptMode.unrestricted,
                )
              : Offstage(),
        ),
      ),
    );
  }
}
