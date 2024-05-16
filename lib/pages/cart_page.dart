import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/const_manager.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/modal_bottom_text_widget.dart';
import 'order_accepted_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "My Cart",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
          // foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const Divider(
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                Expanded(
                  child: ListView.builder(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 25.w),
                      itemCount: ConstManager.cartItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: CartItemWidget(
                              cartItem: ConstManager.cartItems[index]),
                        );
                      }),
                ),
              ],
            ),
            Positioned(
              right: 25.w,
              left: 25.w,
              top: 680.h,
              child: CustomButton(
                method: () {
                  showBottomSheet(context);
                },
                height: 67.h,
                width: 364.w,
                radius: 19.r,
                child: Row(
                  children: [
                    const Spacer(),
                    SizedBox(width: 43.w),
                    Text(
                      "Go to Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: Container(
                        width: 43.w,
                        height: 22.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(72, 158, 103, 1),
                          borderRadius: BorderRadius.all(Radius.circular(4.r)),
                        ),
                        child: Text(
                          "\$12.96",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(242, 243, 242, 1),
      context: context,
      elevation: 2,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 243, 242, 1),
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Checkout",
                        style: TextStyle(fontSize: 24.sp),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          color: Colors.black,
                          size: 25.sp,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(color: Color.fromRGBO(226, 226, 226, 0.7)),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 35.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ModalBottomTextWidget(
                        text: "Delivery",
                        isVisible: true,
                        subtext: "Select Method",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const ModalBottomTextWidget(
                        text: "Pament",
                        isVisible: true,
                        imageUrl: "card.png",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const ModalBottomTextWidget(
                        text: "Promo Code",
                        isVisible: true,
                        subtext: "Pick discount",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const ModalBottomTextWidget(
                        text: "Total Cost",
                        isVisible: true,
                        subtext: "\$13.97",
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'By placing an order you agree to our\n',
                          style: TextStyle(
                            color: const Color.fromRGBO(124, 124, 124, 1),
                            fontSize: 14.sp,
                          ),
                          children: const [
                            TextSpan(
                                text: 'Terms',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: ' And',
                                style: TextStyle(
                                    color: Color.fromRGBO(124, 124, 124, 1))),
                            TextSpan(
                                text: ' Conditions',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Center(
                        child: CustomButton(
                          method: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderAcceptedPage()));
                          },
                          height: 67.h,
                          width: 364.w,
                          radius: 19.r,
                          child: Center(
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
