import 'package:flutter/material.dart';
import 'package:prokit_flutter/customPaint/customTemperatureWidget/TemperatureWidgetScreen.dart';
import 'package:prokit_flutter/dashboard/analytics/screens/analytics_dashboard.dart';
import 'package:prokit_flutter/dashboard/banking/screens/banking_dashboard.dart';
import 'package:prokit_flutter/dashboard/health_medical/screens/health_medical_dashboard.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard1.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard2.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard3.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard4.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard5.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard6.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard7.dart';
import 'package:prokit_flutter/dashboard/screen/Dashboard8.dart';
import 'package:prokit_flutter/dashboard/smart_home/screens/smart_home_dashboard.dart';
import 'package:prokit_flutter/dashboard/split_bill/screens/split_bill_dashboard.dart';
import 'package:prokit_flutter/dashboard/utility_tracker/screens/utility_tracker_dashboard.dart';
import 'package:prokit_flutter/fullApps/appetit/screens/ASplashScreen.dart';
import 'package:prokit_flutter/fullApps/banking/screen/BankingSplash.dart';
import 'package:prokit_flutter/fullApps/beautyMaster/screens/BMSplashScreen.dart';
import 'package:prokit_flutter/fullApps/carea/screens/splash_screen.dart';
import 'package:prokit_flutter/fullApps/cloudStorage/screens/CSSplashScreen.dart';
import 'package:prokit_flutter/fullApps/coinPro/screen/CPSplashScreen.dart';
import 'package:prokit_flutter/fullApps/dating/screen/DASplashScreen.dart';
import 'package:prokit_flutter/fullApps/evSpot/screens/ev_splash_screen.dart';
import 'package:prokit_flutter/fullApps/eventApp/screens/EASplashScreen.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/splash_screen.dart';
import 'package:prokit_flutter/fullApps/food/screen/FoodWalkThrough.dart';
import 'package:prokit_flutter/fullApps/grocery/screen/GrocerySplash.dart';
import 'package:prokit_flutter/fullApps/hairSalon/screens/BHSplashScreen.dart';
import 'package:prokit_flutter/fullApps/homeService/screens/splash_screen.dart';
import 'package:prokit_flutter/fullApps/jobSearch/screens/JSSplashScreen.dart';
import 'package:prokit_flutter/fullApps/juberCarBooking/screens/JCBSplashScreen.dart';
import 'package:prokit_flutter/fullApps/laundryService/screens/LSWalkThroughScreen.dart';
import 'package:prokit_flutter/fullApps/learner/Screens/LearnerWalkThrough.dart';
import 'package:prokit_flutter/fullApps/mealime/screens/MIASplashScreen.dart';
import 'package:prokit_flutter/fullApps/mediLab/screens/MLSplashScreen.dart';
import 'package:prokit_flutter/fullApps/medium/screens/MSplashScreen.dart';
import 'package:prokit_flutter/fullApps/musicPodcast/screen/MPSplashScreen.dart';
import 'package:prokit_flutter/fullApps/newsBlog/screen/NBSplashScreen.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/screens/NMPSplashScreen.dart';
import 'package:prokit_flutter/fullApps/orapay/screens/op_splash_screen.dart';
import 'package:prokit_flutter/fullApps/qibus/screen/QIBusSplash.dart';
import 'package:prokit_flutter/fullApps/quiz/Screens/QuizSignIn.dart';
import 'package:prokit_flutter/fullApps/recipe/screens/RCSplashScreen.dart';
import 'package:prokit_flutter/fullApps/relixMusicApp/screens/relix_splash_screen.dart';
import 'package:prokit_flutter/fullApps/roomFinder/screens/RFSplashScreen.dart';
import 'package:prokit_flutter/fullApps/shopHop/screens/ShSplashScreen.dart';
import 'package:prokit_flutter/fullApps/smartDeck/Screens/SDSplashScreen.dart';
import 'package:prokit_flutter/fullApps/smartHome/screens/SHSplashScreen.dart';
import 'package:prokit_flutter/fullApps/sneakerShopping/screen/SSSplashScreen.dart';
import 'package:prokit_flutter/fullApps/social/screen/SocialWalkThrough.dart';
import 'package:prokit_flutter/fullApps/socialv/screens/SVSplashScreen.dart';
import 'package:prokit_flutter/fullApps/stockMarket/screens/splash_screen.dart';
import 'package:prokit_flutter/fullApps/walletApp/screen/WASplashScreen.dart';
import 'package:prokit_flutter/integrations/screens/FingerprintAuthentication.dart';
import 'package:prokit_flutter/integrations/screens/GenerateQRCodeScreen.dart';
import 'package:prokit_flutter/integrations/screens/ImagePickerScreen.dart';
import 'package:prokit_flutter/integrations/screens/LikeButton/LBHomePage.dart';
import 'package:prokit_flutter/integrations/screens/LocalNotificationScreen.dart';
import 'package:prokit_flutter/integrations/screens/Shimmer/SHomePage.dart';
import 'package:prokit_flutter/integrations/screens/ShowViewCase/SVCHomePage.dart';
import 'package:prokit_flutter/integrations/screens/StackedChart5Screen.dart';
import 'package:prokit_flutter/integrations/screens/VideoPickerScreen.dart';
import 'package:prokit_flutter/integrations/screens/api/get_method_api_integration.dart';
import 'package:prokit_flutter/integrations/screens/before_after_image_screen.dart';
import 'package:prokit_flutter/integrations/screens/confetti/CHomePage.dart';
import 'package:prokit_flutter/integrations/screens/firebaseCrud/FUserListScreen.dart';
import 'package:prokit_flutter/integrations/screens/flutterCalender/CalenderHomePage.dart';
import 'package:prokit_flutter/integrations/screens/flutterTinderCard/TinderHomePage.dart';
import 'package:prokit_flutter/integrations/screens/liquid_pull_to_refresh_screen.dart';
import 'package:prokit_flutter/integrations/screens/pdfReader/LocalPdfViewerScreen.dart';
import 'package:prokit_flutter/integrations/screens/singature_screen.dart';
import 'package:prokit_flutter/main/screens/ProKitLauncher.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/AllTaskDoneScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/AllTaskDoneScreen2.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/EmptyCartScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/EmptyCartScreen5.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/InboxScreen2.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoBalanceScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoBalanceScreen2.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoBalanceScreen3.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoBalanceScreen4.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoChatsScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoEventScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoEventScreen2.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoEventScreen4.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoNotificationScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoNotificationScreen3.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/NoSentMailScreen.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/TaskDoneScreen2.dart';
import 'package:prokit_flutter/singleScreens/emptyScreens/TaskDoneScreen3.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/ConnectionFailedScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/DeadEndScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/ErrorScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/HangOnScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/NoFilesScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/NotEnoughSpace.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/OppsHomeScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/PageNotFoundScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/PaymentFailedScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/RouterOfflineScreen.dart';
import 'package:prokit_flutter/singleScreens/errrorScreens/SomethingsNotRightScreen.dart';
import 'package:prokit_flutter/singleScreens/pricingPlans/ChoosePlanScreen1.dart';
import 'package:prokit_flutter/singleScreens/pricingPlans/ChoosePlanScreen2.dart';
import 'package:prokit_flutter/singleScreens/pricingPlans/ChoosePlanScreen3.dart';
import 'package:prokit_flutter/singleScreens/pricingPlans/ChoosePlanScreen4.dart';
import 'package:prokit_flutter/singleScreens/pricingPlans/ChoosePlanScreen7.dart';
import 'package:prokit_flutter/themes/theme1/screen/T1Dialog.dart';
import 'package:prokit_flutter/themes/theme1/screen/T1Profile.dart';
import 'package:prokit_flutter/themes/theme10/screens/T10Dashboard.dart';
import 'package:prokit_flutter/themes/theme10/screens/T10Profile.dart';
import 'package:prokit_flutter/themes/theme11/screens/T11ListingScreen.dart';
import 'package:prokit_flutter/themes/theme2/screens/T2Listing.dart';
import 'package:prokit_flutter/themes/theme2/screens/T2Walkthrough.dart';
import 'package:prokit_flutter/themes/theme3/screen/T3Profile.dart';
import 'package:prokit_flutter/themes/theme3/screen/T3Search.dart';
import 'package:prokit_flutter/themes/theme4/screens/T4Profile.dart';
import 'package:prokit_flutter/themes/theme4/screens/T4Walkthrough.dart';
import 'package:prokit_flutter/themes/theme5/screens/T5Dialog.dart';
import 'package:prokit_flutter/themes/theme5/screens/T5Listing.dart';
import 'package:prokit_flutter/themes/theme5/screens/T5Search.dart';
import 'package:prokit_flutter/themes/theme5/screens/T5Settings.dart';
import 'package:prokit_flutter/themes/theme6/screens/T6SignIn.dart';
import 'package:prokit_flutter/themes/theme6/screens/T6WalkThrough.dart';
import 'package:prokit_flutter/themes/theme8/screen/T8Listing.dart';
import 'package:prokit_flutter/themes/theme9/screens/T9List.dart';
import 'package:prokit_flutter/themes/theme9/screens/T9Profile.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedBuilderScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedContainerScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedCrossFadeScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedOpacityScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedPositionedScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMAnimatedSizeScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMFadeTransitionScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMHeroScreen.dart';
import 'package:prokit_flutter/widgets/animationAndMotionWidgets/AMScaleTransitionScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWActionSheetScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWActivityIndicatorScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWAlertDialogScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWButtonScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWContextMenuScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWDialogScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWNavigationBarScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWPickerScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWSegmentedControlScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWSliderScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWSlidingSegmentedControlScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWSwitchScreen.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen1.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen2.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen3.dart';
import 'package:prokit_flutter/widgets/cupertinoWidgets/CWTextFieldScreen.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/IMGestureDetectorScreen.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imDismissibleWidgets/IMDismissibleScreen1.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imDismissibleWidgets/IMDismissibleScreen2.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imDraggableWidgets/IMDraggableScreen1.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imDraggableWidgets/IMDraggableScreen2.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imLongPressDraggableWidgets/IMLongPressDraggableScreen1.dart';
import 'package:prokit_flutter/widgets/interactionModelWidgets/imLongPressDraggableWidgets/IMLongPressDraggableScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWAppBarScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen5.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWNavigationRailWidget/MWNavigationRailScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWNavigationRailWidget/MWNavigationRailScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWNavigationRailWidget/MWNavigationRailScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWSliverAppBarWidgets/MWSliverAppBarScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWSliverAppBarWidgets/MWSliverAppBarScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen5.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen6.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen7.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWDropDownButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWFlatButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWFloatingActionButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWIconButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWMaterialButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWOutlineButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWPopupMenuButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwButtonWidgets/MWRaisedButtonScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWAlertDialogScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWBottomSheetScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/MWExpansionPanelScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/MWExpansionPanelScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/MWExpansionPanelScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/MWExpansionPanelScreen5.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/MWExpansionPanelScreen6.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWSimpleDialogScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWSnackBarScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWToastScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWCardScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWChipScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWDataTableScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWGridViewScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWIconScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWImageScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen5.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWMaterialBanner.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWProgressBarScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWRichTextScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInformationDisplayWidgets/MWTooltipScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWCheckboxScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWDatetimePickerScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWRadioScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWSliderScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWSwitchScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFieldWidgets/MWTextFieldScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFieldWidgets/MWTextFieldScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFormFieldScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWDividerScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWListTileScreen.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen4.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen1.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen2.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen3.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen4.dart';
import 'package:prokit_flutter/widgets/otherWidgets/InteractiveViewerScreen.dart';
import 'package:prokit_flutter/widgets/otherWidgets/OpenContainerTransformScreen.dart';
import 'package:prokit_flutter/widgets/paintingAndEffectWidgets/PEBackdropFilterScreen.dart';
import 'package:prokit_flutter/widgets/paintingAndEffectWidgets/PEClipOvalScreen.dart';
import 'package:prokit_flutter/widgets/paintingAndEffectWidgets/PEOpacityScreen.dart';
import 'package:prokit_flutter/widgets/paintingAndEffectWidgets/PERotatedBoxScreen.dart';
import 'package:prokit_flutter/widgets/paintingAndEffectWidgets/PETransformScreen.dart';
import 'package:prokit_flutter/workingApps/chatGPT/screens/chatting_screen.dart';
import 'package:prokit_flutter/workingApps/chatGPTMailGeneration/screens/chatgpt_splash_screen.dart';

import 'integrations/screens/PaymetGatways/FlutterWaveScreen.dart';
import 'integrations/screens/PaymetGatways/razorpay_screen.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    // Full Apps
    ProKitLauncher.tag: (context) => ProKitLauncher(),
    ProKitLauncher.fullAppsTag: (context) => ProKitLauncher(route: ProKitLauncher.fullAppsTag),
    ProKitLauncher.workingAppsTag: (context) => ProKitLauncher(route: ProKitLauncher.workingAppsTag),
    ProKitLauncher.integrationTag: (context) => ProKitLauncher(route: ProKitLauncher.integrationTag),
    ProKitLauncher.widgetsTag: (context) => ProKitLauncher(route: ProKitLauncher.widgetsTag),
    ProKitLauncher.dashboardTag: (context) => ProKitLauncher(route: ProKitLauncher.dashboardTag),
    ProKitLauncher.chartsTag: (context) => ProKitLauncher(route: ProKitLauncher.chartsTag),
    SMSplashScreen.tag: (context) => SMSplashScreen(),
    EVSplashScreen.tag: (context) => EVSplashScreen(),
    RelixSplashScreen.tag: (context) => RelixSplashScreen(),
    SplashScreen.tag: (context) => SplashScreen(),
    CareaSplashScreen.tag: (context) => CareaSplashScreen(),
    RFSplashScreen.tag: (context) => RFSplashScreen(),
    ASplashScreen.tag: (context) => ASplashScreen(),
    NMPSplashScreen.tag: (context) => NMPSplashScreen(),
    JSSplashScreen.tag: (context) => JSSplashScreen(),
    JCBSplashScreen.tag: (context) => JCBSplashScreen(),
    SVSplashScreen.tag: (context) => SVSplashScreen(),
    BMSplashScreen.tag: (context) => BMSplashScreen(),
    LSWalkThroughScreen.tag: (context) => LSWalkThroughScreen(),
    MIASplashScreen.tag: (context) => MIASplashScreen(),
    RCSplashScreen.tag: (context) => RCSplashScreen(),
    CPSplashScreen.tag: (context) => CPSplashScreen(),
    SSSplashScreen.tag: (context) => SSSplashScreen(),
    SHSplashScreen.tag: (context) => SHSplashScreen(),
    WASplashScreen.tag: (context) => WASplashScreen(),
    EASplashScreen.tag: (context) => EASplashScreen(),
    MLSplashScreen.tag: (context) => MLSplashScreen(),
    DASplashScreen.tag: (context) => DASplashScreen(),
    MSplashScreen.tag: (context) => MSplashScreen(),
    CSSplashScreen.tag: (context) => CSSplashScreen(),
    NBSplashScreen.tag: (context) => NBSplashScreen(),
    SDSplashScreen.tag: (context) => SDSplashScreen(),
    MPSplashScreen.tag: (context) => MPSplashScreen(),
    BankingSplash.tag: (context) => BankingSplash(),
    BHSplashScreen.tag: (context) => BHSplashScreen(),
    LearnerWalkThrough.tag: (context) => LearnerWalkThrough(),
    QuizSignIn.tag: (context) => QuizSignIn(),
    ShSplashScreen.tag: (context) => ShSplashScreen(),
    FoodWalkThrough.tag: (context) => FoodWalkThrough(),
    GrocerySplashScreen.tag: (context) => GrocerySplashScreen(),
    OPSplashScreen.tag: (context) => OPSplashScreen(),
    SocialWalkThrough.tag: (context) => SocialWalkThrough(),
    QIBusSplash.tag: (context) => QIBusSplash(),
    FvSplashScreen.tag: (context) => FvSplashScreen(),

    // Working Apps
    ChattingScreen.tag: (context) => ChattingScreen(isDirect: true),
    ChatGPTSplashScreen.tag: (context) => ChatGPTSplashScreen(),

    // Integrations
    FUserListScreen.tag: (context) => FUserListScreen(isDirect: true),
    SHomePage.tag: (context) => SHomePage(isDirect: true),
    GETMethodExampleScreen.tag: (context) => GETMethodExampleScreen(isDirect: true),
    RazorPayScreen.tag: (context) => RazorPayScreen(isDirect: true),
    FlutterWaveScreen.tag: (context) => FlutterWaveScreen(isDirect: true),
    LBHomePage.tag: (context) => LBHomePage(isDirect: true),
    TinderHomePage.tag: (context) => TinderHomePage(isDirect: true),
    CHomePage.tag: (context) => CHomePage(isDirect: true),
    LocalPdfViewerScreen.tag: (context) => LocalPdfViewerScreen(isDirect: true),
    SignatureScreen.tag: (context) => SignatureScreen(isDirect: true),
    SVCHomePage.tag: (context) => SVCHomePage(isDirect: true),
    BeforeAfterImageScreen.tag: (context) => BeforeAfterImageScreen(isDirect: true),
    ImagePickerScreen.tag: (context) => ImagePickerScreen(isDirect: true),
    VideoPickerScreen.tag: (context) => VideoPickerScreen(isDirect: true),
    GenerateQRCodeScreen.tag: (context) => GenerateQRCodeScreen(isDirect: true),
    FingerprintAuthentication.tag: (context) => FingerprintAuthentication(isDirect: true),
    LocalNotificationScreen.tag: (context) => LocalNotificationScreen(isDirect: true),
    CalenderHomePage.tag: (context) => CalenderHomePage(isDirect: true),
    LiquidPullToRefreshScreen.tag: (context) => LiquidPullToRefreshScreen(isDirect: true),
    StackedChart5Screen.tag: (context) => StackedChart5Screen(isDirect: true),

    // App Structure
    MWAppBarScreen.tag: (context) => MWAppBarScreen(isDirect: true),
    MWBottomNavigationScreen1.tag: (context) => MWBottomNavigationScreen1(),
    MWBottomNavigationScreen2.tag: (context) => MWBottomNavigationScreen2(),
    MWBottomNavigationScreen3.tag: (context) => MWBottomNavigationScreen3(),
    MWBottomNavigationScreen4.tag: (context) => MWBottomNavigationScreen4(),
    MWBottomNavigationScreen5.tag: (context) => MWBottomNavigationScreen5(),
    MWBottomNavigationScreen6.tag: (context) => MWBottomNavigationScreen6(),
    MWBottomNavigationScreen7.tag: (context) => MWBottomNavigationScreen7(),
    MWDrawerScreen1.tag: (context) => MWDrawerScreen1(isDirect: true),
    MWDrawerScreen2.tag: (context) => MWDrawerScreen2(),
    MWDrawerScreen3.tag: (context) => MWDrawerScreen3(),
    MWDrawerScreen4.tag: (context) => MWDrawerScreen4(isDirect: true),
    MWDrawerScreen5.tag: (context) => MWDrawerScreen5(),
    MWSliverAppBarScreen1.tag: (context) => MWSliverAppBarScreen1(),
    MWSliverAppBarScreen2.tag: (context) => MWSliverAppBarScreen2(),
    MWTabBarScreen1.tag: (context) => MWTabBarScreen1(),
    MWTabBarScreen2.tag: (context) => MWTabBarScreen2(),
    MWTabBarScreen3.tag: (context) => MWTabBarScreen3(),
    MWTabBarScreen4.tag: (context) => MWTabBarScreen4(),
    MWNavigationRailScreen1.tag: (context) => MWNavigationRailScreen1(),
    MWNavigationRailScreen2.tag: (context) => MWNavigationRailScreen2(),
    MWNavigationRailScreen3.tag: (context) => MWNavigationRailScreen3(),

    // Buttons
    MWDropDownButtonScreen.tag: (context) => MWDropDownButtonScreen(),
    MWMaterialButtonScreen.tag: (context) => MWMaterialButtonScreen(isDirect: true),
    MWFlatButtonScreen.tag: (context) => MWFlatButtonScreen(),
    MWFloatingActionButtonScreen.tag: (context) => MWFloatingActionButtonScreen(),
    MWIconButtonScreen.tag: (context) => MWIconButtonScreen(),
    MWOutlineButtonScreen.tag: (context) => MWOutlineButtonScreen(),
    MWPopupMenuButtonScreen.tag: (context) => MWPopupMenuButtonScreen(),
    MWRaisedButtonScreen.tag: (context) => MWRaisedButtonScreen(),

    // Input & Selection
    MWCheckboxScreen.tag: (context) => MWCheckboxScreen(),
    MWDatetimePickerScreen.tag: (context) => MWDatetimePickerScreen(isDirect: true),
    MWRadioScreen.tag: (context) => MWRadioScreen(),
    MWSliderScreen.tag: (context) => MWSliderScreen(),
    MWSwitchScreen.tag: (context) => MWSwitchScreen(isDirect: true),
    MWTextFieldScreen1.tag: (context) => MWTextFieldScreen1(),
    MWTextFieldScreen2.tag: (context) => MWTextFieldScreen2(),
    MWTextFormFieldScreen.tag: (context) => MWTextFormFieldScreen(),

    // Dialogs, Alerts & Panels
    MWAlertDialogScreen.tag: (context) => MWAlertDialogScreen(),
    MWBottomSheetScreen.tag: (context) => MWBottomSheetScreen(),
    MWExpansionPanelScreen.tag: (context) => MWExpansionPanelScreen(),
    MWExpansionPanelScreen2.tag: (context) => MWExpansionPanelScreen2(),
    MWExpansionPanelScreen4.tag: (context) => MWExpansionPanelScreen4(),
    MWExpansionPanelScreen5.tag: (context) => MWExpansionPanelScreen5(isDirect: true),
    MWExpansionPanelScreen6.tag: (context) => MWExpansionPanelScreen6(),
    MWSimpleDialogScreen.tag: (context) => MWSimpleDialogScreen(),
    MWSnackBarScreen.tag: (context) => MWSnackBarScreen(),
    MWToastScreen.tag: (context) => MWToastScreen(),

    //Information Display
    MWMaterialBanner.tag: (context) => MWMaterialBanner(),
    MWCardScreen.tag: (context) => MWCardScreen(),
    MWChipScreen.tag: (context) => MWChipScreen(),
    MWProgressBarScreen.tag: (context) => MWProgressBarScreen(),
    MWDataTableScreen.tag: (context) => MWDataTableScreen(),
    MWGridViewScreen.tag: (context) => MWGridViewScreen(),
    MWListViewScreen1.tag: (context) => MWListViewScreen1(isDirect: true),
    MWListViewScreen2.tag: (context) => MWListViewScreen2(),
    MWListViewScreen3.tag: (context) => MWListViewScreen3(),
    MWListViewScreen4.tag: (context) => MWListViewScreen4(),
    MWListViewScreen5.tag: (context) => MWListViewScreen5(),
    MWRichTextScreen.tag: (context) => MWRichTextScreen(),
    MWIconScreen.tag: (context) => MWIconScreen(),
    MWImageScreen.tag: (context) => MWImageScreen(),
    MWTooltipScreen.tag: (context) => MWTooltipScreen(),

    // Layout
    MWDividerScreen.tag: (context) => MWDividerScreen(),
    MWListTileScreen.tag: (context) => MWListTileScreen(),
    MWStepperScreen1.tag: (context) => MWStepperScreen1(),
    MWStepperScreen2.tag: (context) => MWStepperScreen2(),
    MWStepperScreen3.tag: (context) => MWStepperScreen3(),
    MWStepperScreen4.tag: (context) => MWStepperScreen4(),
    MWUserAccountDrawerHeaderScreen1.tag: (context) => MWUserAccountDrawerHeaderScreen1(),
    MWUserAccountDrawerHeaderScreen2.tag: (context) => MWUserAccountDrawerHeaderScreen2(),
    MWUserAccountDrawerHeaderScreen3.tag: (context) => MWUserAccountDrawerHeaderScreen3(),
    MWUserAccountDrawerHeaderScreen4.tag: (context) => MWUserAccountDrawerHeaderScreen4(),

    // Cupertino
    CWActionSheetScreen.tag: (context) => CWActionSheetScreen(),
    CWActivityIndicatorScreen.tag: (context) => CWActivityIndicatorScreen(),
    CWAlertDialogScreen.tag: (context) => CWAlertDialogScreen(),
    CWButtonScreen.tag: (context) => CWButtonScreen(),
    CWContextMenuScreen.tag: (context) => CWContextMenuScreen(),
    CWDialogScreen.tag: (context) => CWDialogScreen(),
    CWNavigationBarScreen.tag: (context) => CWNavigationBarScreen(),
    CWPickerScreen.tag: (context) => CWPickerScreen(isDirect: true),
    CWSegmentedControlScreen.tag: (context) => CWSegmentedControlScreen(),
    CWSliderScreen.tag: (context) => CWSliderScreen(),
    CWSlidingSegmentedControlScreen.tag: (context) => CWSlidingSegmentedControlScreen(),
    CWSwitchScreen.tag: (context) => CWSwitchScreen(),
    CWTabBarScreen1.tag: (context) => CWTabBarScreen1(),
    CWTabBarScreen2.tag: (context) => CWTabBarScreen2(),
    CWTabBarScreen3.tag: (context) => CWTabBarScreen3(),
    CWTextFieldScreen.tag: (context) => CWTextFieldScreen(),

    // Painting And Effect Widgets
    PEBackdropFilterScreen.tag: (context) => PEBackdropFilterScreen(),
    PEClipOvalScreen.tag: (context) => PEClipOvalScreen(),
    PEOpacityScreen.tag: (context) => PEOpacityScreen(),
    PERotatedBoxScreen.tag: (context) => PERotatedBoxScreen(isDirect: true),
    PETransformScreen.tag: (context) => PETransformScreen(),

    // Animation
    AMAnimatedBuilderScreen.tag: (context) => AMAnimatedBuilderScreen(),
    AMAnimatedContainerScreen.tag: (context) => AMAnimatedContainerScreen(),
    AMAnimatedCrossFadeScreen.tag: (context) => AMAnimatedCrossFadeScreen(),
    AMAnimatedOpacityScreen.tag: (context) => AMAnimatedOpacityScreen(),
    AMFadeTransitionScreen.tag: (context) => AMFadeTransitionScreen(),
    AMHeroScreen.tag: (context) => AMHeroScreen(),
    AMScaleTransitionScreen.tag: (context) => AMScaleTransitionScreen(),
    AMAnimatedSizeScreen.tag: (context) => AMAnimatedSizeScreen(),
    AMAnimatedPositionedScreen.tag: (context) => AMAnimatedPositionedScreen(),

    //  Interaction Model Widgets
    IMDismissibleScreen1.tag: (context) => IMDismissibleScreen1(),
    IMDismissibleScreen2.tag: (context) => IMDismissibleScreen2(),
    IMGestureDetectorScreen.tag: (context) => IMGestureDetectorScreen(),
    IMDraggableScreen1.tag: (context) => IMDraggableScreen1(),
    IMDraggableScreen2.tag: (context) => IMDraggableScreen2(),
    IMLongPressDraggableScreen1.tag: (context) => IMLongPressDraggableScreen1(),
    IMLongPressDraggableScreen2.tag: (context) => IMLongPressDraggableScreen2(),

    //Other Widgets
    InteractiveViewerScreen.tag: (context) => InteractiveViewerScreen(),
    OpenContainerTransformScreen.tag: (context) => OpenContainerTransformScreen(),

    // Dashboard
    Dashboard1.tag: (context) => Dashboard1(isDirect: true),
    Dashboard2.tag: (context) => Dashboard2(isDirect: true),
    Dashboard3.tag: (context) => Dashboard3(isDirect: true),
    Dashboard4.tag: (context) => Dashboard4(isDirect: true),
    Dashboard5.tag: (context) => Dashboard5(isDirect: true),
    Dashboard6.tag: (context) => Dashboard6(isDirect: true),
    Dashboard7.tag: (context) => Dashboard7(isDirect: true),
    Dashboard8.tag: (context) => Dashboard8(isDirect: true),
    UtilityTrackerDashboard.tag: (context) => UtilityTrackerDashboard(isDirect: true),
    HealthMedicalDashboard.tag: (context) => HealthMedicalDashboard(isDirect: true),
    SplitBillDashboard.tag: (context) => SplitBillDashboard(isDirect: true),
    AnalyticsDashboard.tag: (context) => AnalyticsDashboard(isDirect: true),
    SmartHomeDashboard.tag: (context) => SmartHomeDashboard(isDirect: true),
    BankingDashboard.tag: (context) => BankingDashboard(isDirect: true),

    // Screens
    SomethingsNotRightScreen.tag: (context) => SomethingsNotRightScreen(),
    RouterOfflineScreen.tag: (context) => RouterOfflineScreen(),
    PageNotFoundScreen.tag: (context) => PageNotFoundScreen(),
    HangOnScreen.tag: (context) => HangOnScreen(),
    NotEnoughSpaceScreen.tag: (context) => NotEnoughSpaceScreen(),
    NoFilesScreen.tag: (context) => NoFilesScreen(),
    OppsHomeScreen.tag: (context) => OppsHomeScreen(),
    ErrorScreen.tag: (context) => ErrorScreen(),
    DeadEndScreen.tag: (context) => DeadEndScreen(),
    ConnectionFailedScreen.tag: (context) => ConnectionFailedScreen(),
    PaymentFailedScreen.tag: (context) => PaymentFailedScreen(),
    TemperatureWidgetScreen.tag: (context) => TemperatureWidgetScreen(isDirect: true),
    T6WalkThrough.tag: (context) => T6WalkThrough(),
    T4WalkThrough.tag: (context) => T4WalkThrough(),
    T2WalkThrough.tag: (context) => T2WalkThrough(isDirect: true),
    T6SignIn.tag: (context) => T6SignIn(),
    T1Dialog.tag: (context) => T1Dialog(),
    T5Dialog.tag: (context) => T5Dialog(),
    T5Settings.tag: (context) => T5Settings(isDirect: true),
    T2Listing.tag: (context) => T2Listing(isDirect: true),
    T11ListingScreen.tag: (context) => T11ListingScreen(),
    T9List.tag: (context) => T9List(),
    T8Listing.tag: (context) => T8Listing(isDirect: true),
    T5Listing.tag: (context) => T5Listing(isDirect: true),
    T3Search.tag: (context) => T3Search(isDirect: true),
    T5Search.tag: (context) => T5Search(isDirect: true),
    T10Dashboard.tag: (context) => T10Dashboard(isDirect: true),
    T1Profile.tag: (context) => T1Profile(isDirect: true),
    T10Profile.tag: (context) => T10Profile(isDirect: true),
    T9Profile.tag: (context) => T9Profile(),
    T4Profile.tag: (context) => T4Profile(isDirect: true),
    T3Profile.tag: (context) => T3Profile(isDirect: true),
    ChoosePlanScreen4.tag: (context) => ChoosePlanScreen4(isDirect: true),
    ChoosePlanScreen2.tag: (context) => ChoosePlanScreen2(isDirect: true),
    ChoosePlanScreen3.tag: (context) => ChoosePlanScreen3(isDirect: true),
    ChoosePlanScreen1.tag: (context) => ChoosePlanScreen1(isDirect: true),
    ChoosePlanScreen7.tag: (context) => ChoosePlanScreen7(isDirect: true),
    TaskDoneScreen3.tag: (context) => TaskDoneScreen3(),
    NoSentMailScreen.tag: (context) => NoSentMailScreen(),
    NoNotificationScreen.tag: (context) => NoNotificationScreen(),
    NoNotificationScreen3.tag: (context) => NoNotificationScreen3(),
    TaskDoneScreen2.tag: (context) => TaskDoneScreen2(),
    NoEventScreen4.tag: (context) => NoEventScreen4(),
    NoEventScreen2.tag: (context) => NoEventScreen2(),
    NoChatsScreen.tag: (context) => NoChatsScreen(),
    NoBalanceScreen2.tag: (context) => NoBalanceScreen2(),
    NoEventScreen.tag: (context) => NoEventScreen(),
    NoBalanceScreen4.tag: (context) => NoBalanceScreen4(),
    NoBalanceScreen3.tag: (context) => NoBalanceScreen3(),
    NoBalanceScreen.tag: (context) => NoBalanceScreen(),
    InboxScreen2.tag: (context) => InboxScreen2(),
    EmptyCartScreen5.tag: (context) => EmptyCartScreen5(),
    AllTaskDoneScreen.tag: (context) => AllTaskDoneScreen(),
    AllTaskDoneScreen2.tag: (context) => AllTaskDoneScreen2(),
    EmptyCartScreen.tag: (context) => EmptyCartScreen(),
  };
}
