import 'package:flutter/material.dart';
import 'package:new_e_commerce_app/utilities/routes.dart';
import 'package:new_e_commerce_app/view/pages/NavBar.dart';
import 'package:new_e_commerce_app/view/pages/Landing_page.dart';
import 'package:new_e_commerce_app/view/pages/Login_page.dart';
import 'package:new_e_commerce_app/view/pages/Register_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.navBarPage:
      return MaterialPageRoute(
        builder: (context) => const NavBar(),
      );
    case AppRoutes.loginPage:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case AppRoutes.registerPage:
      return MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      );
    case AppRoutes.landingPage:
    default:
      return MaterialPageRoute(
        builder: (context) => const LandingPage(),
      );
  }
}
