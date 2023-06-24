import '../home_screen/widgets/home_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:ablego/core/app_export.dart';
import 'package:ablego/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: getVerticalSize(
                      812,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: getPadding(
                              left: 16,
                              top: 57,
                              right: 16,
                              bottom: 57,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup2812x375,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAvatar,
                                  height: getSize(
                                    50,
                                  ),
                                  width: getSize(
                                    50,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      25,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgIccurrent,
                                  height: getSize(
                                    230,
                                  ),
                                  width: getSize(
                                    230,
                                  ),
                                  alignment: Alignment.center,
                                  margin: getMargin(
                                    top: 80,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 44,
                                  width: 44,
                                  margin: getMargin(
                                    top: 84,
                                    bottom: 210,
                                  ),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              top: 13,
                              bottom: 13,
                            ),
                            decoration:
                                AppDecoration.outlineBlack90019.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    right: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          95,
                                        ),
                                        width: getHorizontalSize(
                                          21,
                                        ),
                                        margin: getMargin(
                                          top: 33,
                                          bottom: 4,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  53,
                                                ),
                                                child: VerticalDivider(
                                                  width: getHorizontalSize(
                                                    3,
                                                  ),
                                                  thickness: getVerticalSize(
                                                    3,
                                                  ),
                                                  color: ColorConstant.gray400,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                padding: getPadding(
                                                  all: 5,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlack9001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: getSize(
                                                        10,
                                                      ),
                                                      width: getSize(
                                                        10,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black900,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            5,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationPink500,
                                              height: getVerticalSize(
                                                24,
                                              ),
                                              width: getHorizontalSize(
                                                18,
                                              ),
                                              alignment: Alignment.bottomCenter,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(
                                            left: 14,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: getHorizontalSize(
                                                  166,
                                                ),
                                                child: Divider(
                                                  height: getVerticalSize(
                                                    6,
                                                  ),
                                                  thickness: getVerticalSize(
                                                    6,
                                                  ),
                                                  color: ColorConstant.gray500,
                                                  indent: getHorizontalSize(
                                                    109,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 8,
                                                ),
                                                child: Text(
                                                  "lbl_pickup".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular13Black900,
                                                ),
                                              ),
                                              Text(
                                                "msg_my_current_location".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular17Black900,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 10,
                                                ),
                                                child: Divider(
                                                  height: getVerticalSize(
                                                    3,
                                                  ),
                                                  thickness: getVerticalSize(
                                                    3,
                                                  ),
                                                  color: ColorConstant.black900,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 14,
                                                ),
                                                child: Text(
                                                  "lbl_drop_off"
                                                      .tr
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular13Black900,
                                                ),
                                              ),
                                              Text(
                                                "msg_shyam_nagar_gali".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular17Black900,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(
                                    92,
                                  ),
                                  child: BlocSelector<HomeBloc, HomeState,
                                      HomeModel?>(
                                    selector: (state) => state.homeModelObj,
                                    builder: (context, homeModelObj) {
                                      return ListView.separated(
                                        padding: getPadding(
                                          left: 15,
                                          top: 28,
                                          bottom: 34,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (
                                          context,
                                          index,
                                        ) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              10,
                                            ),
                                          );
                                        },
                                        itemCount:
                                            homeModelObj?.homeItemList.length ??
                                                0,
                                        itemBuilder: (context, index) {
                                          HomeItemModel model = homeModelObj
                                                  ?.homeItemList[index] ??
                                              HomeItemModel();
                                          return HomeItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
