import 'bloc/setup_gps_locations_bloc.dart';
import 'models/setup_gps_locations_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SetupGpsLocationsScreen extends StatelessWidget {
  const SetupGpsLocationsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetupGpsLocationsBloc>(
      create: (context) => SetupGpsLocationsBloc(SetupGpsLocationsState(
        setupGpsLocationsModelObj: SetupGpsLocationsModel(),
      ))
        ..add(SetupGpsLocationsInitialEvent()),
      child: SetupGpsLocationsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupGpsLocationsBloc, SetupGpsLocationsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPage1AmberA400,
                    height: getVerticalSize(
                      189,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                    margin: getMargin(
                      top: 32,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      139,
                    ),
                    width: getHorizontalSize(
                      258,
                    ),
                    margin: getMargin(
                      top: 50,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: getHorizontalSize(
                              256,
                            ),
                            child: Text(
                              "msg_hi_nice_to_meet".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOpenSansRomanBold32.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            width: getHorizontalSize(
                              247,
                            ),
                            child: Text(
                              "msg_choose_your_location".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular17Gray400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      51,
                    ),
                    width: getHorizontalSize(
                      309,
                    ),
                    margin: getMargin(
                      top: 29,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              45,
                            ),
                            width: getHorizontalSize(
                              301,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.black900,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            50,
                          ),
                          width: getHorizontalSize(
                            304,
                          ),
                          text: "msg_use_current_location".tr,
                          variant: ButtonVariant.OutlineAmberA400,
                          padding: ButtonPadding.PaddingT13,
                          fontStyle: ButtonFontStyle.OpenSansItalicLight17,
                          prefixWidget: Container(
                            margin: getMargin(
                              right: 16,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.amberA400,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSignal,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 54,
                    ),
                    child: Text(
                      "msg_select_it_manually".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular17Pink500.copyWith(
                        decoration: TextDecoration.underline,
                      ),
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
