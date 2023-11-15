import 'bloc/sign_up_complete_account_bloc.dart';import 'models/sign_up_complete_account_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:bulle_s_application1/core/utils/validation_functions.dart';import 'package:bulle_s_application1/widgets/custom_elevated_button.dart';import 'package:bulle_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:fluttertoast/fluttertoast.dart';
// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen extends StatelessWidget {SignUpCompleteAccountScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<SignUpCompleteAccountBloc>(create: (context) => SignUpCompleteAccountBloc(SignUpCompleteAccountState(signUpCompleteAccountModelObj: SignUpCompleteAccountModel()))..add(SignUpCompleteAccountInitialEvent()), child: SignUpCompleteAccountScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 13, right: 24, bottom: 13), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGroup162799, height: getSize(24), width: getSize(24), onTap: () {onTapImgImage(context);}), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 47, right: 15), child: Text("msg_complete_your_account".tr, style: theme.textTheme.headlineSmall))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 9), child: Text("msg_lorem_ipsum_dolor".tr, style: CustomTextStyles.titleSmallBluegray400_1))), Padding(padding: getPadding(top: 33), child: Text("lbl_first_name".tr, style: theme.textTheme.titleSmall)), BlocSelector<SignUpCompleteAccountBloc, SignUpCompleteAccountState, TextEditingController?>(selector: (state) => state.firstNameController, builder: (context, firstNameController) {return CustomTextFormField(controller: firstNameController, margin: getMargin(top: 9), hintText: "msg_enter_your_first".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}, contentPadding: getPadding(left: 12, top: 15, right: 12, bottom: 15));}), Padding(padding: getPadding(top: 18), child: Text("lbl_last_name".tr, style: theme.textTheme.titleSmall)), BlocSelector<SignUpCompleteAccountBloc, SignUpCompleteAccountState, TextEditingController?>(selector: (state) => state.lastNameController, builder: (context, lastNameController) {return CustomTextFormField(controller: lastNameController, margin: getMargin(top: 9), hintText: "msg_enter_your_last".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}, contentPadding: getPadding(left: 12, top: 15, right: 12, bottom: 15));}), Padding(padding: getPadding(top: 18), child: Text("lbl_password".tr, style: theme.textTheme.titleSmall)), BlocBuilder<SignUpCompleteAccountBloc, SignUpCompleteAccountState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, margin: getMargin(top: 9), hintText: "msg_create_a_password".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<SignUpCompleteAccountBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: getMargin(left: 30, top: 14, right: 16, bottom: 14), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgCheckmark : ImageConstant.imgCheckmark))), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, obscureText: state.isShowPassword, contentPadding: getPadding(left: 16, top: 15, bottom: 15));}), Container(margin: getMargin(top: 16), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 5), child: Text("msg_select_a_country".tr, style: CustomTextStyles.titleMediumMedium)), CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(24), width: getSize(24), margin: getMargin(top: 1))])), CustomElevatedButton(text: "msg_continue_with_email".tr, margin: getMargin(top: 40), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapContinuewith(context);}), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 40, top: 28, right: 40), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: CustomTextStyles.titleMediumBluegray300), GestureDetector(onTap: () {onTapTxtLargelabelmediu(context);}, child: Padding(padding: getPadding(left: 3), child: Text("lbl_login".tr, style: theme.textTheme.titleMedium)))]))), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(245), margin: getMargin(left: 40, top: 19, right: 40, bottom: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_by_signing_up_you2".tr, style: CustomTextStyles.titleSmallBluegray400SemiBold), TextSpan(text: "lbl_terms".tr, style: CustomTextStyles.titleSmallErrorContainer), TextSpan(text: "lbl_and".tr, style: CustomTextStyles.titleSmallBluegray400SemiBold), TextSpan(text: "msg_conditions_of_use".tr, style: CustomTextStyles.titleSmallErrorContainer)]), textAlign: TextAlign.center)))]))))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgImage(BuildContext context) { NavigatorService.goBack(); } 
/// Calls the https://nodedemo.dhiwise.co/device/auth/register API and triggers a [CreateRegisterEvent] event on the [SignUpCompleteAccountBloc] bloc.
///
/// Validates the form and triggers a [CreateRegisterEvent] event on the [SignUpCompleteAccountBloc] bloc if the form is valid.
/// The [BuildContext] parameter represents current [BuildContext]
onTapContinuewith(BuildContext context) { if(_formKey.currentState!.validate()) {context.read<SignUpCompleteAccountBloc>().add(CreateRegisterEvent(onCreateRegisterEventSuccess: () {

_onRegisterDeviceAuthEventSuccess(context);
},onCreateRegisterEventError: () {

_onRegisterDeviceAuthEventError(context);
},),);
} } 
/// Navigates to the jobTypeScreen when the action is triggered.

/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the jobTypeScreen.
void _onRegisterDeviceAuthEventSuccess(BuildContext context) { NavigatorService.popAndPushNamed(AppRoutes.jobTypeScreen, ); } 
/// Displays a toast message using the Fluttertoast library.
void _onRegisterDeviceAuthEventError(BuildContext context) { 
Fluttertoast.showToast(msg: context.read<SignUpCompleteAccountBloc>().postRegisterDeviceAuthResp.message.toString() ?? ''); } 
/// Navigates to the loginScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loginScreen.
onTapTxtLargelabelmediu(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }
