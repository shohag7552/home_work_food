import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:green_food/utils/AdaptiveTextSize.dart';
import 'package:green_food/utils/Color.dart';
import 'package:green_food/utils/Const.dart';

import 'Controller/DashBoardController.dart';
import 'UI/views/base_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashBoardController());
    return GetBuilder<DashBoardController>(
      init: DashBoardController(),
      initState: (_) {},
      builder: (controller) {
        return BaseWidget(builder: (context, sizingInformation) {
          return Scaffold(
            backgroundColor: grey,
            appBar: Utils.dashboardAppbar(
                title: ' 147 C, Road 7, Block C, Banasree', context: context),
            body: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 3,
                            height: 40,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good Evening, Onim",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Select your category and get delivery on time!",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: green,
                                  ),
                                  child: Center(
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(
                                            'Restaurants ',
                                            style: TextStyle(
                                                color: white,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ))),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: white,
                                      border: Border.all(
                                        color: green,
                                        width: 1,
                                      )),
                                  child: Center(
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(
                                            'Green Kitchen',
                                            style: TextStyle(
                                                color: green,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ))),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: white,
                                      border: Border.all(
                                        color: green,
                                        width: 1,
                                      )),
                                  child: Center(
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          child: Text(
                                            'Medicine',
                                            style: TextStyle(
                                                color: green,
                                                fontSize: AdaptiveTextSize()
                                                    .getadaptiveTextSize(
                                                        context, 12)),
                                            textAlign: TextAlign.center,
                                          ))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText:
                                  'Search for restaurant, Green Kitchen, Medic', // variable
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: green,
                              ), //variable
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 18, vertical: 18),
                          child: Icon(
                            Icons.tune_rounded,
                            size: 22,
                            color: green,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
      },
    );
  }
}
