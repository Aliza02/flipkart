import 'package:flipkart/res/images_icons.dart';
import 'package:flipkart/widget/sponsored_card.dart';
import 'package:flipkart/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sponsored extends StatelessWidget {
  final List<dynamic> list;
  const Sponsored({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return SponsoredCard(
                    image: list[index]['image-url'],
                    productName: list[index]['productName'],
                    productPrice: list[index]['price'],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
