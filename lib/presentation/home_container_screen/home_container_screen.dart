import 'bloc/home_container_bloc.dart';import 'models/home_container_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:bulle_s_application1/presentation/home_page/home_page.dart';import 'package:bulle_s_application1/presentation/message_page/message_page.dart';import 'package:bulle_s_application1/presentation/profile_page/profile_page.dart';import 'package:bulle_s_application1/presentation/saved_page/saved_page.dart';import 'package:bulle_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeContainerBloc>(create: (context) => HomeContainerBloc(HomeContainerState(homeContainerModelObj: HomeContainerModel()))..add(HomeContainerInitialEvent()), child: HomeContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomeContainerBloc, HomeContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Saved: return AppRoutes.savedPage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); case AppRoutes.messagePage: return MessagePage.builder(context); case AppRoutes.savedPage: return SavedPage.builder(context); case AppRoutes.profilePage: return ProfilePage.builder(context); default: return DefaultWidget();} } 
 }
