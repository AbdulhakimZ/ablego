import 'bloc/splash_screen_two_bloc.dart';
import 'models/splash_screen_two_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenTwoBloc>(
        create: (context) => SplashScreenTwoBloc(SplashScreenTwoState(
            splashScreenTwoModelObj: SplashScreenTwoModel()))
          ..add(SplashScreenTwoInitialEvent()),
        child: SplashScreenTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenTwoBloc, SplashScreenTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.black900,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                padding: getPadding(top: 102),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgAblegologo1,
                                          height: getVerticalSize(277),
                                          width: getHorizontalSize(274)),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_choose_language".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtHelveticaBold24)),
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(top: 15),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: ColorConstant.black900,
                                                  width: getHorizontalSize(2)),
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL15),
                                          child: Container(
                                              height: getVerticalSize(62),
                                              width: getHorizontalSize(241),
                                              padding: getPadding(
                                                  left: 34,
                                                  top: 11,
                                                  right: 34,
                                                  bottom: 11),
                                              decoration: AppDecoration.white
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL15),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                            "lbl_english_uk".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.36)))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowup,
                                                        height: getSize(38),
                                                        width: getSize(38),
                                                        alignment: Alignment
                                                            .centerRight)
                                                  ]))),
                                      Container(
                                          height: getVerticalSize(280),
                                          width: double.maxFinite,
                                          margin: getMargin(top: 3),
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                        height: getVerticalSize(
                                                            237),
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgFill1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          236),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          375),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgFill1copy,
                                                                  height:
                                                                      getVerticalSize(
                                                                          135),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          240),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight)
                                                            ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFill1copy2,
                                                    height: getSize(135),
                                                    width: getSize(135),
                                                    alignment:
                                                        Alignment.bottomLeft),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 73,
                                                            right: 61),
                                                        decoration: AppDecoration
                                                            .fillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderBL15),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          20),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          241),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              ColorConstant.whiteA700)),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          80),
                                                                  text:
                                                                      "lbl_english_us"
                                                                          .tr,
                                                                  shape: ButtonShape
                                                                      .Square),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          80),
                                                                  text:
                                                                      "lbl_hindi"
                                                                          .tr,
                                                                  shape: ButtonShape
                                                                      .Square),
                                                              SizedBox(
                                                                  width: double
                                                                      .maxFinite,
                                                                  child:
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              241),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  45,
                                                                              top:
                                                                                  29,
                                                                              right:
                                                                                  45,
                                                                              bottom:
                                                                                  29),
                                                                          decoration: AppDecoration
                                                                              .fillWhiteA700,
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(padding: getPadding(bottom: 2), child: Text("lbl_german".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium12.copyWith(letterSpacing: getHorizontalSize(0.36))))
                                                                              ])))
                                                            ])))
                                              ]))
                                    ])))
                      ]))));
    });
  }
}
