import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomTextWidget extends StatelessWidget {
  const ModalBottomTextWidget(
      {super.key, required this.text, required this.isVisible});
  final String text;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: const Color.fromRGBO(124, 124, 124, 1),
                fontSize: 18.sp,
              ),
            ),
            isVisible
                ? Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.sp,
                  )
                : const SizedBox.shrink()
          ],
        ),
        SizedBox(height: 15.h),
        const Divider(color: Color.fromRGBO(226, 226, 226, 0.7))
      ],
    );
  }
}
