import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/const_manager.dart';
import '../widgets/category_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white ,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Find Products",
            style: TextStyle(fontSize: 20.sp),
          ),
          centerTitle: true,
          forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
          // foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  // shrinkWrap: true,
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w,
                    vertical: 15.h,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    mainAxisExtent: 190.h,
                    crossAxisCount: 2,
                  ),
                  itemCount: ConstManager.category.length,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                        categoryModel: ConstManager.category[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
