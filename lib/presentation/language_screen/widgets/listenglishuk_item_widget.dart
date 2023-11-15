import '../models/listenglishuk_item_model.dart';
import 'package:bulle_s_application1/core/app_export.dart';
import 'package:bulle_s_application1/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListenglishukItemWidget extends StatelessWidget {
  ListenglishukItemWidget(
    this.listenglishukItemModelObj, {
    Key? key,
    this.changeCheckBox,
  }) : super(
          key: key,
        );

  ListenglishukItemModel listenglishukItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return CustomCheckboxButton(
      width: getHorizontalSize(295),
      text: "lbl_english_uk".tr,
      value: listenglishukItemModelObj.englishuk,
      textStyle: CustomTextStyles.titleMediumGray900,
      isRightCheck: true,
      onChange: (value) {
        changeCheckBox?.call(value);
      },
    );
  }
}
