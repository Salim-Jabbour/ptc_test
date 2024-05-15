import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/beverages_model.dart';
import 'custom_button.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key, required this.product});
  final BeveragesModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.h,
      width: 173.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(18.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: SizedBox(
              height: 93.h,
              child: Center(
                child: Image.asset(
                  "assets/images${product.imageUrl}.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              width: 123.w,
              height: 20.h,
              child: Text(
                product.name,
                style: TextStyle(fontSize: 16.sp),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: SizedBox(
              width: 79.w,
              height: 40.h,
              child: Text(
                "${product.volume}, Price",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 79.w,
                  height: 30.h,
                  child: Text(
                    product.price,
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                CustomButton(
                  height: 45.h,
                  width: 45.h,
                  radius: 17.r,
                  method: () {},
                  child: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 35.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
