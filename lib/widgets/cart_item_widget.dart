import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/cart_item_model.dart';
import '../resources/color_manager.dart';
import 'custom_button.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, required this.cartItem});
  final CartItemModel cartItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 97.h,
          child: Row(
            children: [
              SizedBox(
                height: 65.h,
                width: 70.4.w,
                child: Center(
                  child: Image.asset(
                    "assets/images${cartItem.imageUrl}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 32.w),
              // nam, quantity and buttons
              Column(
                children: [
                  Text(
                    cartItem.name,
                    style: TextStyle(fontSize: 16.sp),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    cartItem.quantity,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 47.h,
                    width: 133.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          height: 45.h,
                          width: 45.h,
                          radius: 17.r,
                          method: () {},
                          isCounter: true,
                          child: Icon(
                            Icons.minimize_rounded,
                            color: const Color.fromRGBO(179, 179, 179, 1),
                            size: 35.sp,
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 16.sp),
                          textAlign: TextAlign.center,
                        ),
                        CustomButton(
                          height: 45.h,
                          width: 45.h,
                          radius: 17.r,
                          method: () {},
                          isCounter: true,
                          child: Icon(
                            Icons.add_rounded,
                            color: ColorManager.green,
                            size: 35.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 80.w),
              // x button and price
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.close,
                    size: 20.sp,
                    color: const Color.fromRGBO(179, 179, 179, 1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Text(
                      cartItem.price,
                      style: TextStyle(fontSize: 18.sp),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        const Divider(color: Color.fromRGBO(226, 226, 226, 0.7)),
      ],
    );
  }
}
