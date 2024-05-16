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
    this.isCounter,
    required this.child,
  });
  final Function method;
  final double height;
  final double width;
  final double radius;
  final bool? isCounter;
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
          color: isCounter == null ? ColorManager.green : Colors.white,
          border: isCounter == null
              ? null
              : Border.all(
                  color: const Color.fromRGBO(226, 226, 226, 1),
                ),
          borderRadius: BorderRadius.all(Radius.circular(radius.r)),
        ),
        child: child,
      ),
    );
  }
}
