import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "90000",
                  style: TextStyle(
                    fontSize: 70,
                  ),
                ),
                Text(
                  "80000+10000",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "^",
                      ),
                      ItemButtonCustom(
                        text: "AC",
                      ),
                      ItemButtonCustom(
                        text: "C",
                      ),
                      Material(
                        elevation: 10,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: Icon(Icons.color_lens_outlined),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "(",
                      ),
                      ItemButtonCustom(
                        text: ")",
                      ),
                      ItemButtonCustom(
                        text: "%",
                      ),
                      ItemButtonCustom(
                        text: ":",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "7",
                      ),
                      ItemButtonCustom(
                        text: "8",
                      ),
                      ItemButtonCustom(
                        text: "9",
                      ),
                      ItemButtonCustom(
                        text: "*",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "4",
                      ),
                      ItemButtonCustom(
                        text: "5",
                      ),
                      ItemButtonCustom(
                        text: "6",
                      ),
                      ItemButtonCustom(
                        text: "-",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "1",
                      ),
                      ItemButtonCustom(
                        text: "2",
                      ),
                      ItemButtonCustom(
                        text: "3",
                      ),
                      ItemButtonCustom(
                        text: "+",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemButtonCustom(
                        text: "0",
                      ),
                      ItemButtonCustom(
                        text: ".",
                      ),
                      Material(
                        elevation: 10,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 120,
                            height: 60,
                            child: Center(
                              child: Text("="),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}

class ItemButtonCustom extends StatelessWidget {
  const ItemButtonCustom({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 60,
          height: 60,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
