import 'bloc/splash_bloc.dart';import 'models/splash_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:flutter/material.dart';class SplashScreen extends StatelessWidget {const SplashScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashBloc>(create: (context) => SplashBloc(SplashState(splashModelObj: SplashModel()))..add(SplashInitialEvent()), child: SplashScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: CustomImageView(svgPath: ImageConstant.imgGroup162797, height: getVerticalSize(153), width: getHorizontalSize(102), alignment: Alignment.center, margin: getMargin(bottom: 5)))));}); } 
 }
