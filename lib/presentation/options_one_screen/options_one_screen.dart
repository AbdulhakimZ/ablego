import 'bloc/options_one_bloc.dart';
import 'models/options_one_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OptionsOneScreen extends StatelessWidget {
  const OptionsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OptionsOneBloc>(
      create: (context) => OptionsOneBloc(OptionsOneState(
        optionsOneModelObj: OptionsOneModel(),
      ))
        ..add(OptionsOneInitialEvent()),
      child: OptionsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsOneBloc, OptionsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    "msg_how_are_you_diffrentiable".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtHelveticaBold24,
                  ),
                  Container(
                    height: getVerticalSize(
                      416,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 73,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup2,
                          height: getVerticalSize(
                            236,
                          ),
                          width: getHorizontalSize(
                            375,
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 74,
                              right: 60,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    20,
                                  ),
                                  width: getHorizontalSize(
                                    241,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    80,
                                  ),
                                  text: "lbl_walking".tr,
                                  shape: ButtonShape.Square,
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    80,
                                  ),
                                  text: "lbl_hearing".tr,
                                  shape: ButtonShape.Square,
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  child: Container(
                                    width: getHorizontalSize(
                                      241,
                                    ),
                                    padding: getPadding(
                                      left: 45,
                                      top: 23,
                                      right: 45,
                                      bottom: 23,
                                    ),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_seeing".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium12
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.36,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
