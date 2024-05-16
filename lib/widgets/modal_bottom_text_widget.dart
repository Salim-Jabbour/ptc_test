import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalBottomTextWidget extends StatelessWidget {
  const ModalBottomTextWidget({
    super.key,
    required this.text,
    required this.isVisible,
    this.subtext,
    this.imageUrl,
  });
  final String text;
  final bool isVisible;
  final String? subtext;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: const Color.fromRGBO(124, 124, 124, 1),
                fontSize: 18.sp,
              ),
            ),
            const Spacer(),
            subtext != null && imageUrl == null
                ? Text(
                    subtext!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  )
                : const SizedBox.shrink(),
            imageUrl != null
                ? Image.asset(
                    "assets/images/$imageUrl",
                    fit: BoxFit.fill,
                  )
                : const SizedBox.shrink(),
            isVisible
                ? Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20.sp,
                    ),
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
