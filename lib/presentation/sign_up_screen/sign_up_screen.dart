import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/core/utils/validation_functions.dart';
import 'package:ablego/widgets/custom_button.dart';
import 'package:ablego/widgets/custom_phone_number.dart';
import 'package:ablego/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ablego/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    Country country = Country(
      isoCode: 'IN',
      iso3Code: 'IND',
      phoneCode: '+91',
      name: 'India',
    );
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: getVerticalSize(812),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(
                                                left: 73,
                                                top: 62,
                                                right: 73,
                                                bottom: 62),
                                            decoration:
                                                AppDecoration.fillBlack900,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAblegologo1,
                                                      height:
                                                          getVerticalSize(226),
                                                      width: getHorizontalSize(
                                                          229),
                                                      margin:
                                                          getMargin(bottom: 35))
                                                ]))),
                                    Spacer(),
                                    Container(
                                        margin: getMargin(left: 19, right: 18),
                                        padding: getPadding(all: 3),
                                        decoration:
                                            AppDecoration.outlineBluegray400,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapOfficialbuttons(
                                                        context);
                                                  },
                                                  child: Container(
                                                      margin:
                                                          getMargin(bottom: 1),
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 10,
                                                          right: 8,
                                                          bottom: 10),
                                                      decoration: AppDecoration
                                                          .outlineBlack9002a
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder2),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGoogle,
                                                            height: getSize(18),
                                                            width: getSize(18)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                top: 2),
                                                            child: Text(
                                                                "msg_sign_in_with_google"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium14))
                                                      ])))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(top: 36, bottom: 37),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "msg_by_clicking_start2"
                                                      .tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(13),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text:
                                                      "msg_terms_and_conditions"
                                                          .tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(13),
                                                      fontFamily: 'Open Sans',
                                                      fontWeight:
                                                          FontWeight.w300))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup2WhiteA700,
                          height: getVerticalSize(256),
                          width: getHorizontalSize(375),
                          alignment: Alignment.topCenter,
                          margin: getMargin(top: 129)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin:
                                  getMargin(left: 16, right: 16, bottom: 161),
                              padding: getPadding(top: 28, bottom: 28),
                              decoration: AppDecoration.outlineBlack900
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 37, top: 6, right: 56),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_sign_up".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansItalicBold24
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.23))),
                                              Text("lbl_sign_in".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansItalicLight24
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.23)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(5),
                                        width: getHorizontalSize(37),
                                        margin: getMargin(left: 62, top: 1),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.yellow800,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))),
                                    Container(
                                        height: getVerticalSize(156),
                                        width: getHorizontalSize(343),
                                        margin: getMargin(top: 20),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              BlocSelector<
                                                      SignUpBloc,
                                                      SignUpState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.emailController,
                                                  builder: (context,
                                                      emailController) {
                                                    return CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                301),
                                                        focusNode: FocusNode(),
                                                        autofocus: true,
                                                        controller:
                                                            emailController,
                                                        hintText:
                                                            "msg_name_example_com"
                                                                .tr,
                                                        margin:
                                                            getMargin(top: 44),
                                                        textInputType:
                                                            TextInputType
                                                                .emailAddress,
                                                        alignment:
                                                            Alignment.topCenter,
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isValidEmail(
                                                                  value,
                                                                  isRequired:
                                                                      true))) {
                                                            return "Please enter valid email";
                                                          }
                                                          return null;
                                                        });
                                                  }),
                                              Column(children: [
                                                Row(children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 33,
                                                          top: 122,
                                                          bottom: 9),
                                                      child: CountryPickerUtils
                                                          .getDefaultFlagImage(
                                                              country)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 123,
                                                          right: 6,
                                                          bottom: 8),
                                                      child: CountryPickerUtils
                                                          .getDefaultFlagImage(
                                                              country))
                                                ]),
                                                Container(
                                                    height: getVerticalSize(1),
                                                    width:
                                                        getHorizontalSize(343),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueGray50))
                                              ])
                                            ])),
                                    CustomButton(
                                        height: getVerticalSize(45),
                                        text: "lbl_sign_up".tr,
                                        margin: getMargin(
                                            left: 21, top: 39, right: 21),
                                        variant: ButtonVariant.FillBlack900,
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle: ButtonFontStyle
                                            .OpenSansItalicLight17WhiteA700,
                                        alignment: Alignment.center)
                                  ])))
                    ])))));
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapOfficialbuttons(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
