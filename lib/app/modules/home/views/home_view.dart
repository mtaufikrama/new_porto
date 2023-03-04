import 'dart:js';

import 'package:dr1bclone/app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            addAutomaticKeepAlives: false,
            controller: controller.autoScrollController,
            children: List.generate(
              controller.listWidget(context).length,
              (index) => AutoScrollTag(
                key: ValueKey<int>(index),
                controller: controller.autoScrollController,
                index: index,
                child: controller.listWidget(context)[index],
              ),
            ),
          ),
          appBarButton(context),
        ],
      ),
    );
  }

  Align appBarButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: controller.buttonAppBar
              .map((e) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: responsive(
                    context,
                    mobile: Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: e['label'] as String,
                      child: ElevatedButton(
                        onPressed: () async =>
                            await controller.scrollIndex(e['onPressed']),
                        child: e['icon'] as ImageIcon,
                      ),
                    ),
                    desktop: ElevatedButton.icon(
                      onPressed: () async =>
                          await controller.scrollIndex(e['onPressed'] as int),
                      icon: e['icon'] as ImageIcon,
                      label: Text(
                        e['label'] as String,
                        style: fontGoogle(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    tablet: ElevatedButton.icon(
                      onPressed: () async =>
                          await controller.scrollIndex(e['onPressed'] as int),
                      icon: e['icon'] as ImageIcon,
                      label: Text(
                        e['label'] as String,
                        style: fontGoogle(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  )))
              .toList(),
        ),
      ),
    );
  }
}
