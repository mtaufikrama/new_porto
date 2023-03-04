import 'package:dr1bclone/app/modules/home/views/closing.dart';
import 'package:dr1bclone/app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../controllers/home_controller.dart';
import 'aboutme.dart';
import 'myskill.dart';
import 'opening.dart';
import 'certificate.dart';
import 'pengalaman.dart';
import 'portofolio.dart';

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
            children: [
              AutoScrollTag(
                key: const ValueKey<int>(0),
                controller: controller.autoScrollController,
                index: 0,
                child: openingPage(context),
              ),
              AutoScrollTag(
                key: const ValueKey<int>(1),
                controller: controller.autoScrollController,
                index: 1,
                child: aboutMe(context),
              ),
              AutoScrollTag(
                key: const ValueKey<int>(2),
                controller: controller.autoScrollController,
                index: 2,
                child: mySkill(context),
              ),
              AutoScrollTag(
                key: const ValueKey<int>(3),
                controller: controller.autoScrollController,
                index: 3,
                child: certificate(context),
              ),
              AutoScrollTag(
                key: const ValueKey<int>(4),
                controller: controller.autoScrollController,
                index: 4,
                child: experience(context),
              ),
              AutoScrollTag(
                key: const ValueKey<int>(5),
                controller: controller.autoScrollController,
                index: 5,
                child: portofolio(context),
              ),
              AutoScrollTag(
                  key: const ValueKey<int>(6),
                  controller: controller.autoScrollController,
                  index: 6,
                  child: closing(context)),
            ],
          ),
          appBarButton(),
        ],
      ),
    );
  }

  Align appBarButton() {
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
                          fontSize: 15.0,
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
