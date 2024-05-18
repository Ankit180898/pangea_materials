import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:pangea_materials/main.dart';
import 'package:pangea_materials/view/common/extensions.dart';
import 'package:pangea_materials/view/screens/home/home_screen.dart';
import 'package:pangea_materials/view/styles/styles.dart';

class FooterComponent extends StatelessWidget {
  FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: $styles.colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Gap($styles.insets.xxl),
                    Text(
                      "mridul@pangeamaterials.in",
                      style:
                          $styles.text.h3.copyWith(color: $styles.colors.white),
                    ),
                    Gap($styles.insets.sm),
                    Text(
                      "+91 78386 61284",
                      style:
                          $styles.text.h3.copyWith(color: $styles.colors.white),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PAGES",
                      style:
                          $styles.text.h3.copyWith(color: $styles.colors.white),
                    ),
                    Gap($styles.insets.sm),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(pages[index]['page'].toString(),
                              style: $styles.text.body
                                  .copyWith(color: $styles.colors.white)),
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "POLICIES",
                      style:
                          $styles.text.h3.copyWith(color: $styles.colors.white),
                    ),
                    Gap($styles.insets.sm),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: policies.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text("${policies[index]['page']}",
                              style: $styles.text.body
                                  .copyWith(color: $styles.colors.white)),
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                ),
              ))
            ],
          ),
          Gap($styles.insets.xxl),
          Container(
            child: Center(
                child: Text(
              "© 2023 Pangea. All rights reserved.",
              style:
                  $styles.text.bodySmall.copyWith(color: $styles.colors.white),
            )),
          )
        ],
      ).paddingOnly(left: 64, right: 64, top: 64, bottom: 16),
    );
  }

  List<Map<String, dynamic>> pages = [
    {"page": "Overview", 'route': HomeScreen()},
    {"page": "Features", 'route': HomeScreen()},
    {"page": "Pricing", 'route': HomeScreen()},
    {"page": "Careers", 'route': HomeScreen()},
    {"page": "Help", 'route': HomeScreen()}
  ];
  List<Map<String, dynamic>> policies = [
    {"page": "Terms of Use", 'route': HomeScreen()},
    {"page": "Privacy Policy", 'route': HomeScreen()},
    {"page": "Privacy Policy", 'route': HomeScreen()},
  ];
}
