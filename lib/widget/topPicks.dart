import 'package:flipkart/res/colors.dart';
import 'package:flipkart/res/images_icons.dart';
import 'package:flipkart/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopPicks extends StatelessWidget {
  final List<dynamic> list;
  final String title;
  final Color bgColor;
  const TopPicks(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.8,
      width: Get.width,
      color: bgColor,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Get.height * 0.02,
            ),
            child: text(
              title: title,
              fontColor: Colors.black,
              fontSize: Get.width * 0.06,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          Expanded(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.72,
                    crossAxisCount: 2,
                    mainAxisSpacing: 9.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: Get.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          Get.width * 0.04,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 0.2,
                            spreadRadius: 1.4,
                          ),
                        ],
                      ),
                      child: Column(
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: Get.height * 0.02,
                            ),
                            child: Image.asset(list[index]['image-url']),
                          ),
                          text(
                            title: list[index]['productName'],
                            fontColor: Colors.black,
                            fontSize: Get.width * 0.05,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                          text(
                            title: list[index]['price'],
                            fontColor: Colors.black,
                            fontSize: Get.width * 0.05,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
