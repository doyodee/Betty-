import '../models/listchineses_item_model.dart';
import 'package:bulle_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListchinesesItemWidget extends StatelessWidget {
  ListchinesesItemWidget(
    this.listchinesesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListchinesesItemModel listchinesesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      listchinesesItemModelObj.chinesesTxt,
      style: theme.textTheme.titleMedium,
    );
  }
}
