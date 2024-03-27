import 'package:flipkart/res/images_icons.dart';
import 'package:flipkart/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsoredCard extends StatelessWidget {
  final String image;
  final String productName;
  final String productPrice;
  const SponsoredCard(
      {super.key,
      required this.image,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.29,
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.015,
        vertical: Get.height * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 0.2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: Get.height * 0.1,
            // width: Get.width * 0.15,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image
                        // Assets
                        //   .recommended[index],
                        ))),
          ),
          Container(
            // width: Get.width * 0.3,
            padding: EdgeInsets.only(top: Get.height * 0.01
                // vertical: Get.height * 0.01,
                ),
            child: text(
              title: productName,
              // [
              //   'FastTrack Revollt',
              //   'Energy Saving Fans',
              //   'Gentle Care'
              // ][index],
              fontColor: Colors.black,
              fontSize: Get.width * 0.03,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            child: text(
              title: productPrice,
              // [
              //   'Just 1799',
              //   'From 1899',
              //   'Upto 60% off'
              // ][index],
              fontColor: Colors.black,
              fontSize: Get.width * 0.03,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
