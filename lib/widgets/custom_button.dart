import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/color_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.method,
    required this.height,
    required this.width,
    required this.radius,
    required this.child,
  });
  final Function method;
  final double height;
  final double width;
  final double radius;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        method();
      },
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: ColorManager.green,
          // border: Border.all(
          //     // color: ColorManager.green,
          //     ),
          borderRadius: BorderRadius.all(Radius.circular(radius.r)),
        ),
        child: child,
      ),
    );
  }
}
