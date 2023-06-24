import '../models/home_item_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          164,
        ),
        margin: getMargin(
          right: 10,
        ),
        padding: getPadding(
          left: 30,
          top: 1,
          right: 43,
          bottom: 1,
        ),
        decoration: AppDecoration.txtOutlineBlack90019.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder15,
        ),
        child: Text(
          homeItemModelObj.tagTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular13Bluegray90001,
        ),
      ),
    );
  }
}
