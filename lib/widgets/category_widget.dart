import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/category_model.dart';
import '../pages/beverages_page.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeveragesPage()));
      },
      child: Container(
        height: 190.h,
        width: 175.w,
        decoration: BoxDecoration(
          color: categoryModel.backgroundColor,
          border: Border.all(
            color: categoryModel.borderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(18.r)),
        ),
        child: Column(
          children: [
            SizedBox(height: 27.6.h),
            SizedBox(
              width: 111.38.w,
              height: 75.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.5.w),
                child: Image.asset(
                  categoryModel.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 27.6.h),
            SizedBox(
              width: 100.w,
              height: 44.h,
              child: Text(
                categoryModel.text,
                style: TextStyle(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
