import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/widgets/modal_bottom_text_widget.dart';

import '../resources/const_manager.dart';
import '../widgets/custom_button.dart';
import '../widgets/products_widget.dart';

class BeveragesPage extends StatefulWidget {
  const BeveragesPage({super.key});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Beverages",
            style: TextStyle(fontSize: 20.sp),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(10.w),
              child: CustomButton(
                height: 40.h,
                width: 40.h,
                radius: 14.r,
                method: () {
                  showBottomSheet(context);
                },
                child: Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                  size: 30.h,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w,
                    vertical: 15.h,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: 1.43 / 2,
                    crossAxisCount: 2,
                  ),
                  itemCount: ConstManager.products.length,
                  itemBuilder: (context, index) {
                    return ProductsWidget(
                        product: ConstManager.products[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(242, 243, 242, 1),
          // border: Border.all(
          //     // color: ColorManager.green,
          //     ),
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
                        "Add",
                        style: TextStyle(fontSize: 24.sp),
                      ),
                      Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                        size: 25.sp,
                      )
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
                          text: "Name", isVisible: false),
                      SizedBox(
                        height: 20.h,
                      ),
                      const ModalBottomTextWidget(
                          text: "Description", isVisible: false),
                      SizedBox(
                        height: 20.h,
                      ),
                      const ModalBottomTextWidget(
                          text: "Price", isVisible: false),
                      SizedBox(
                        height: 20.h,
                      ),
                      const ModalBottomTextWidget(
                          text: "Image", isVisible: true),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: CustomButton(
                          method: () {},
                          height: 67.h,
                          width: 364.w,
                          radius: 19.r,
                          child: Center(
                            child: Text(
                              "Add Item",
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
