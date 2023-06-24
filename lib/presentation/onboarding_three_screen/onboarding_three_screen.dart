import 'bloc/onboarding_three_bloc.dart';
import 'models/onboarding_three_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:flutter/material.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
      create: (context) => OnboardingThreeBloc(OnboardingThreeState(
        onboardingThreeModelObj: OnboardingThreeModel(),
      ))
        ..add(OnboardingThreeInitialEvent()),
      child: OnboardingThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 48,
                top: 44,
                right: 48,
                bottom: 44,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgPage1,
                    height: getSize(
                      278,
                    ),
                    width: getSize(
                      278,
                    ),
                    margin: getMargin(
                      top: 55,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 70,
                    ),
                    child: Text(
                      "lbl_track_your_ride".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSansItalicBold30.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.28,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      278,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Text(
                      "msg_know_your_driver".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular17,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: getVerticalSize(
                      6,
                    ),
                    width: getHorizontalSize(
                      90,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blueGray50,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      child: LinearProgressIndicator(
                        value: 0.33,
                        backgroundColor: ColorConstant.blueGray50,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ColorConstant.amberA400,
                        ),
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
