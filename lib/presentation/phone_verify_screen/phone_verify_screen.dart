import 'bloc/phone_verify_bloc.dart';
import 'models/phone_verify_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerifyScreen extends StatelessWidget {
  const PhoneVerifyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PhoneVerifyBloc>(
        create: (context) => PhoneVerifyBloc(
            PhoneVerifyState(phoneVerifyModelObj: PhoneVerifyModel()))
          ..add(PhoneVerifyInitialEvent()),
        child: PhoneVerifyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50D1,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 21, right: 16, bottom: 21),
                              decoration: AppDecoration.fillGreenA200,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(21),
                                        width: getHorizontalSize(12),
                                        margin: getMargin(top: 35),
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        }),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Text("msg_phone_verification".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold34
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.41)))),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text(
                                            "msg_enter_your_otp_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular17))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 35, top: 76, right: 37),
                          child: BlocSelector<PhoneVerifyBloc, PhoneVerifyState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    textStyle: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(36),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w300),
                                    pinTheme: PinTheme(
                                        fieldWidth: getHorizontalSize(60),
                                        shape: PinCodeFieldShape.underline,
                                        selectedFillColor:
                                            ColorConstant.blueGray100,
                                        activeFillColor:
                                            ColorConstant.blueGray100,
                                        inactiveFillColor:
                                            ColorConstant.blueGray100,
                                        inactiveColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        selectedColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        activeColor: ColorConstant.fromHex(
                                            "#1212121D")));
                              })),
                      CustomButton(
                          height: getVerticalSize(45),
                          text: "lbl_verify_now".tr,
                          margin: getMargin(
                              left: 37, top: 73, right: 37, bottom: 5),
                          variant: ButtonVariant.FillGreenA200,
                          padding: ButtonPadding.PaddingAll10,
                          fontStyle:
                              ButtonFontStyle.OpenSansItalicLight17WhiteA700)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
