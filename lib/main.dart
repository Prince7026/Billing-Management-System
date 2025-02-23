import 'package:bms_user_app/view/splash_screen/provider/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
      ],
      child: const ScreenUtilInit(
        designSize: Size(1080, 1920),
        child: GetMaterialApp(
          title: 'Billing Management System',
          home: SplashScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
