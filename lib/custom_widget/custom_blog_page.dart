import 'package:flutter/material.dart';

Widget blogposts(
    {required String imagename,
    required String name,
    required String buyprice,
    required String sellprice}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage("images/$imagename"),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: "SB",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 15.0),
        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "خرید روی : $buyprice",
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "SB",
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(width: 5.0),
              const Icon(
                Icons.sell,
                color: Colors.green,
                size: 22,
              ),
              const SizedBox(width: 40.0),
              Flexible(
                child: Text(
                  "فروش روی : $sellprice",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "SB",
                    color: Colors.red,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(width: 5.0),
              const Icon(
                Icons.price_check,
                color: Colors.red,
                size: 30,
              ),
            ],
          ),
        ),
        const Divider(
          height: 30.0,
          color: Colors.black,
          thickness: 2,
          indent: 60.0,
          endIndent: 60.0,
        ),
      ],
    ),
  );
}
