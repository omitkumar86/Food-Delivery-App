import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/const/color.dart';
import 'package:food_delivery_app/const/style.dart';
import 'package:food_delivery_app/pages/home_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDeepNevi,
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "images/bg.png",
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Grab your",
                        style: myStyle(50.sp, seconderyWhite, FontWeight.w700),
                      ),
                      Text(
                        "Delicius food!",
                        style: myStyle(50.sp, seconderyWhite, FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Delivery food in your phone",
                        style: myStyle(20.sp, seconderyWhite, FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
                        child: Row(
                          children: [
                            Container(
                              height: 5.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: primaryWhite),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: seconderyDeepNevi),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Container(
                              height: 5.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: seconderyDeepNevi),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 62.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: primaryOrange),
                          child: Text(
                            "Get Started",
                            style:
                                myStyle(25.sp, seconderyWhite, FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
