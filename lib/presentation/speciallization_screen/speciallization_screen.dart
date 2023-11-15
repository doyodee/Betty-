import 'bloc/speciallization_bloc.dart';import 'models/speciallization_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:bulle_s_application1/widgets/custom_checkbox_button.dart';import 'package:bulle_s_application1/widgets/custom_elevated_button.dart';import 'package:bulle_s_application1/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:bulle_s_application1/presentation/confirmation_dialog/confirmation_dialog.dart';class SpeciallizationScreen extends StatelessWidget {const SpeciallizationScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SpeciallizationBloc>(create: (context) => SpeciallizationBloc(SpeciallizationState(speciallizationModelObj: SpeciallizationModel()))..add(SpeciallizationInitialEvent()), child: SpeciallizationScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 13, right: 23, bottom: 13), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgGroup162799, height: getSize(24), width: getSize(24), alignment: Alignment.centerLeft, margin: getMargin(left: 1), onTap: () {onTapImgImage(context);}), Container(width: getHorizontalSize(177), margin: getMargin(top: 44), child: Text("msg_what_is_your_specialization".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall!.copyWith(height: 1.33))), Padding(padding: getPadding(top: 7), child: Text("msg_lorem_ipsum_dolor2".tr, style: CustomTextStyles.titleSmallBluegray400_1)), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 31), padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: BlocSelector<SpeciallizationBloc, SpeciallizationState, bool?>(selector: (state) => state.designcreative, builder: (context, designcreative) {return CustomCheckboxButton(text: "msg_design_creative".tr, value: designcreative, onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeCheckBoxEvent(value: value));});})), Padding(padding: getPadding(top: 16), child: BlocBuilder<SpeciallizationBloc, SpeciallizationState>(builder: (context, state) {return state.speciallizationModelObj!.radioList.isNotEmpty ? Column(children: [CustomRadioButton(text: "msg_development_it".tr, value: state.speciallizationModelObj?.radioList[0] ?? "", groupValue: state.radioGroup, padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeRadioButtonEvent(value: value));}), CustomRadioButton(text: "msg_engineering_architecture".tr, value: state.speciallizationModelObj?.radioList[1] ?? "", groupValue: state.radioGroup, margin: getMargin(top: 16), padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeRadioButtonEvent(value: value));}), CustomRadioButton(text: "msg_sales_marketing".tr, value: state.speciallizationModelObj?.radioList[2] ?? "", groupValue: state.radioGroup, margin: getMargin(top: 16), padding: getPadding(left: 17, top: 10, right: 30, bottom: 10), onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeRadioButtonEvent(value: value));})]) : Container();})), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 16), padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: BlocSelector<SpeciallizationBloc, SpeciallizationState, String?>(selector: (state) => state.radioGroup1, builder: (context, radioGroup1) {return CustomRadioButton(text: "lbl_writing".tr, value: "lbl_writing".tr ?? "", groupValue: radioGroup1, onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeRadioButton1Event(value: value));});})), Container(width: getHorizontalSize(327), margin: getMargin(left: 1, top: 16, bottom: 5), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: BlocSelector<SpeciallizationBloc, SpeciallizationState, String?>(selector: (state) => state.radioGroup2, builder: (context, radioGroup2) {return CustomRadioButton(text: "lbl_finance".tr, value: "lbl_finance".tr ?? "", groupValue: radioGroup2, padding: getPadding(top: 1, bottom: 1), onChange: (value) {context.read<SpeciallizationBloc>().add(ChangeRadioButton2Event(value: value));});}))])), bottomNavigationBar: CustomElevatedButton(text: "lbl_continue".tr, margin: getMargin(left: 24, right: 24, bottom: 39), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapContinue(context);}))); } 


/// Displays an [AlertDialog] with a custom content widget using the 
/// provided [BuildContext].
///
/// The custom content widget is created by calling 
/// [ConfirmationDialog.builder] method.
onTapContinue(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: ConfirmationDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgImage(BuildContext context) { NavigatorService.goBack(); } 
 }
