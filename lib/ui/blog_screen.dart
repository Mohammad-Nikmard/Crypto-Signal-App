import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vip_signal/custom_widget/custom_blog_page.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> posts = [
    blogposts(
      imagename: "BTC_chart.png",
      name: "Bitcoin",
      buyprice: "47,920.30",
      sellprice: "48,270.24",
    ),
    blogposts(
      imagename: "ATOM_chart.png",
      name: "ATOM",
      buyprice: "9.1",
      sellprice: "10.18",
    ),
    blogposts(
      imagename: "APT_chart.png",
      name: "APT",
      buyprice: "10.1",
      sellprice: "9.18",
    ),
    blogposts(
      imagename: "SHIB_chart.png",
      name: "Shiba",
      buyprice: "0.0007132",
      sellprice: "0.0007366",
    ),
    blogposts(
      imagename: "ETH_chart.png",
      name: "Ethereum",
      buyprice: "2,00.30",
      sellprice: "2,533.89",
    ),
    blogposts(
      imagename: "BNB_chart.png",
      name: "BNB",
      buyprice: "320.42",
      sellprice: "324.61",
    ),
    blogposts(
      imagename: "SOL_chart.png",
      name: "Solana",
      buyprice: "103.45",
      sellprice: "109.16",
    ),
    blogposts(
      imagename: "AVAX_chart.png",
      name: "AVAX",
      buyprice: "38.53",
      sellprice: "40.71",
    ),
    blogposts(
      imagename: "XRP_chart.png",
      name: "XRP",
      buyprice: "0.4832",
      sellprice: "0.5282",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getappbar(),
      backgroundColor: const Color(0xffEEEEEE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...posts,
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    height: ScreenUtil().setHeight(45),
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
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "خروج از حساب",
                        style: TextStyle(
                          fontFamily: "Vazir",
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      backgroundColor: const Color(0xffEEEEEE),
      elevation: 5,
      iconTheme: const IconThemeData(color: Colors.black),
      title: const Text(
        "سیگنال های این هفته",
        style: TextStyle(
          fontSize: 19,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: "SB",
        ),
      ),
      centerTitle: true,
    );
  }
}
