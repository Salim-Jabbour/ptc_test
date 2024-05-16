import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/custom_button.dart';

class OrderAcceptedPage extends StatelessWidget {
  const OrderAcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(58.w, 151.h, 86.w, 66.h),
            child:
                Center(child: Image.asset("assets/images/order_accepted.png")),
          ),
          Center(
            child: Text(
              "Your Order has been\naccepted",
              style: TextStyle(fontSize: 28.sp),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              "Your items has been placcd and is on\nit’s way to being processed",
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(124, 124, 124, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25.w, 134.h, 25.w, 24.h),
            child: Center(
              child: CustomButton(
                method: () {},
                height: 67.h,
                width: 364.w,
                radius: 19.r,
                child: Center(
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarWidget()));
            },
            child: Center(
              child: Text(
                "Back to home",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
