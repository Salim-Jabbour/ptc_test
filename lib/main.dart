import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/bottom_navigation_bar_widget.dart';
import 'resources/color_manager.dart';
import 'widgets/custom_button.dart';

Future main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 896),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PTC_TEST',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.green),
          useMaterial3: true,
        ),
        home: const OnBoardingPage(),
      ),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Stack(
            children: [
              SizedBox(
                height: 1.sh,
                width: 1.sw,
                child: Image.asset(
                  "assets/images/onboarding.png",
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 485.h),
                    SizedBox(
                        width: 49.w,
                        height: 56.h,
                        child: Image.asset("assets/images/carrout.png")),
                    SizedBox(height: 35.h),
                    Text(
                      "Welcome\nto our store",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 19.h),
                    Text(
                      "Get your groceries in as fast as one hour",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 38.h),
                    CustomButton(
                      method: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigationBarWidget()));
                      },
                      height: 60,
                      width: 353,
                      radius: 19,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.center,
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
  }
}
