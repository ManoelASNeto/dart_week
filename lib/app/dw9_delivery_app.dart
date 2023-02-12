import 'package:flutter/material.dart';
import 'package:vakinha_delivery_app/app/pages/auth/login/login_router.dart';
import 'package:vakinha_delivery_app/app/pages/auth/register/register_router.dart';
import 'package:vakinha_delivery_app/app/pages/order/order_page.dart';

import 'core/provider/application_binding.dart';
import 'core/ui/theme/theme_config.dart';
import 'pages/auth/login/login_page.dart';
import 'pages/auth/register/register_page.dart';
import 'pages/home/home_router.dart';
import 'pages/product_detail/product_datail_router.dart';
import 'pages/splash/splash_page.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDatailRouter.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => const OrderPage(),
        },
      ),
    );
  }
}
