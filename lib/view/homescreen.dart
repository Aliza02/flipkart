import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart/api_response.dart';
import 'package:flipkart/res/colors.dart';
import 'package:flipkart/res/images_icons.dart';
import 'package:flipkart/widget/sponsored.dart';
import 'package:flipkart/widget/text.dart';
import 'package:flipkart/widget/topPicks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  bool switchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          5,
          (index) => BottomNavigationBarItem(
            label: ["Home", "Categories", "Notifi..", "Account", "Cart"][index],
            icon: Icon([
              Icons.home_outlined,
              Icons.category_outlined,
              Icons.notifications_outlined,
              Icons.person_outlined,
              Icons.shopping_cart_outlined
            ][index]),
          ),
        ),
      ),
      body: FutureBuilder(
          future: readData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container();
            } else {
              return Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: Get.height * 0.25,
                        width: Get.width,
                        padding: EdgeInsets.only(
                          top: Get.height * 0.07,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Appcolors.appbarGradientColor[0],
                                Appcolors.appbarGradientColor[1],
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: Get.width * 0.03,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.02,
                                  ),
                                  child: Image.asset(
                                    Assets.logo,
                                    height: Get.height * 0.045,
                                  ),
                                ),
                                text(
                                    title: 'FlipKart',
                                    fontColor: Appcolors.brandNameColor,
                                    fontSize: Get.width * 0.065,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.italic),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: Get.height * 0.02,
                                        left: Get.width * 0.01,
                                      ),
                                      child: text(
                                          title: 'Brand Mall',
                                          fontColor: Colors.black,
                                          fontSize: Get.width * 0.035,
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Switch(
                                        inactiveThumbColor: Colors.white,
                                        trackOutlineColor:
                                            const MaterialStatePropertyAll<
                                                Color>(Colors.transparent),
                                        trackColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.grey.withOpacity(0.2)),
                                        trackOutlineWidth:
                                            const MaterialStatePropertyAll<
                                                double>(0.0),
                                        value: switchOn,
                                        onChanged: (val) {
                                          print(val);
                                        })
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    height: Get.height * 0.07,
                                    padding: EdgeInsets.only(
                                      right: Get.width * 0.04,
                                      left: Get.width * 0.02,
                                    ),
                                    child: SearchBar(
                                      hintText: 'Mobile',
                                      leading: Icon(
                                        Icons.search,
                                        color: Colors.grey.withOpacity(1),
                                      ),
                                      trailing: [
                                        Icon(
                                          Icons.mic_none,
                                          color: Colors.grey.withOpacity(1),
                                        ),
                                        Icon(
                                          Icons.photo_camera_outlined,
                                          color: Colors.grey.withOpacity(1),
                                        ),
                                      ],
                                      elevation:
                                          MaterialStatePropertyAll<double>(0.2),
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.white),
                                      shape: MaterialStatePropertyAll<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            side: BorderSide(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: Get.height * 0.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Appcolors.appbarGradientColor[0],
                              Appcolors.appbarGradientColor[1],
                            ],
                          ),
                        ),
                        child: Row(children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: Get.height * 0.13,
                                      width: Get.width * 0.2,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: Get.width * 0.02,
                                        // vertical: Get.height * 0.01,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: Get.height * 0.02,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            Get.width * 0.04,
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            Get.width * 0.03),
                                        child: Image.asset(
                                          snapshot.data['header-category']
                                              [index]['image-Url'],
                                          height: Get.height * 0.2,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: Get.width * 0.2,
                                      alignment: Alignment.center,
                                      child: text(
                                        title: snapshot.data['header-category']
                                            [index]['category-name'],
                                        fontColor: Colors.black,
                                        fontSize: Get.width * 0.04,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),

                  // ListView.builder(
                  //   itemCount: 50,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return ListTile(
                  //       title: Text('Item $index'),
                  //     );
                  //   },
                  // ),
                  DraggableScrollableSheet(
                    initialChildSize: 0.55,
                    minChildSize: 0.1,
                    maxChildSize: 1.0,
                    expand: true,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, -3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          controller: scrollController,
                          child: Column(
                            children: [
                              Container(
                                height: Get.height * 0.01,
                                width: Get.width * 0.1,
                                decoration: ShapeDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                      Get.width * 0.04,
                                    ))),
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                  height: 200.0,
                                  autoPlay: true,
                                  enableInfiniteScroll: true,
                                ),
                                items: [1, 2, 3, 4, 5].map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width: Get.width,
                                        height: Get.height * 0.2,
                                        padding: EdgeInsets.only(
                                          left: Get.width * 0.02,
                                          // top: Get.height * 0.025,
                                        ),
                                        child: Image.asset(
                                          Assets.carouselImages[0],
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              // Container(
                              //   width: Get.width,
                              //   height: Get.height * 0.2,
                              //   margin: EdgeInsets.only(
                              //     top: Get.height * 0.025,
                              //   ),
                              //   child: Image.asset(
                              //     Assets.carouselImages[0],
                              //   ),
                              // ),
                              SizedBox(
                                height: Get.height * 0.18,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: 12,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  height: Get.height * 0.075,
                                                  width: Get.width * 0.15,
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        Get.width * 0.02,
                                                    vertical: Get.height * 0.01,
                                                  ),
                                                  decoration: ShapeDecoration(
                                                    // color: Colors.amber,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Get.width),
                                                    ),
                                                  ),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        snapshot.data[
                                                                'main-category']
                                                            [
                                                            index]['image-Url']),
                                                  ),
                                                ),
                                                Container(
                                                  width: Get.width * 0.2,
                                                  alignment: Alignment.center,
                                                  child: text(
                                                    title: snapshot.data[
                                                                'main-category']
                                                            [index]
                                                        ['category-name'],
                                                    fontColor: Colors.black,
                                                    fontSize: Get.width * 0.04,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                              Sponsored(
                                list: snapshot.data['popular'],
                              ),
                              TopPicks(
                                list: snapshot.data['seasons-top-pick'],
                                title: "Season's top Picks",
                                bgColor: Appcolors.purple,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.symmetric(
                                  vertical: Get.height * 0.01,
                                  horizontal: Get.width * 0.03,
                                ),
                                child: text(
                                  title: "Sponsored",
                                  fontColor: Colors.black,
                                  fontSize: Get.width * 0.06,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Sponsored(
                                list: snapshot.data['sponsored'],
                              ),
                              Sponsored(
                                list: snapshot.data['sponsored'],
                              ),
                              TopPicks(
                                list: snapshot.data['Health-Wellness'],
                                title: "Best of Health & Wellness",
                                bgColor: Appcolors.teal,
                              ),
                              TopPicks(
                                title: "In Demand",
                                bgColor: Colors.pinkAccent.withOpacity(0.2),
                                list: snapshot.data['InDemand'],
                              ),
                              TopPicks(
                                list: snapshot.data['wildest-collection'],
                                title: "Wildest Collection",
                                bgColor: Colors.purpleAccent.withOpacity(0.2),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          }),
    );
  }
}
