import 'package:flutter/material.dart';
import 'package:ablego/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:ablego/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:ablego/presentation/setup_gps_locations_screen/setup_gps_locations_screen.dart';
import 'package:ablego/presentation/options_one_screen/options_one_screen.dart';
import 'package:ablego/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ablego/presentation/phone_verify_screen/phone_verify_screen.dart';
import 'package:ablego/presentation/home_screen/home_screen.dart';
import 'package:ablego/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String setupGpsLocationsScreen = '/setup_gps_locations_screen';

  static const String optionsOneScreen = '/options_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String phoneVerifyScreen = '/phone_verify_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreenTwoScreen: SplashScreenTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        setupGpsLocationsScreen: SetupGpsLocationsScreen.builder,
        optionsOneScreen: OptionsOneScreen.builder,
        signUpScreen: SignUpScreen.builder,
        phoneVerifyScreen: PhoneVerifyScreen.builder,
        homeScreen: HomeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreenTwoScreen.builder
      };
}
