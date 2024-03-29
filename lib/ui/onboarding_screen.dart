import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vip_signal/ui/blog_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  navigator(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("images/onboarding_logo.png"),
              ),
              Text(
                "اپلیکیشن سیگنال VIP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "SB",
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(32),
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      navigator(context, BlogScreen());
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(145),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 25,
                            spreadRadius: -10,
                            color: Color.fromARGB(255, 68, 57, 233),
                          ),
                        ],
                        color: Color.fromARGB(255, 68, 57, 233),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "ورود",
                          style: TextStyle(
                            fontFamily: "Vazir",
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: Container(
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(145),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 25,
                            spreadRadius: -10,
                            color: Color.fromARGB(255, 236, 74, 74),
                          ),
                        ],
                        color: Color.fromARGB(255, 236, 74, 74),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "ثبت نام",
                          style: TextStyle(
                            fontFamily: "Vazir",
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
