import 'package:dr1bclone/app/data/dll/services.dart';
import 'package:dr1bclone/app/modules/home/views/subview/aboutme.dart';
import 'package:dr1bclone/app/modules/home/views/subview/certificate.dart';
import 'package:dr1bclone/app/modules/home/views/subview/closing.dart';
import 'package:dr1bclone/app/modules/home/views/subview/myskill.dart';
import 'package:dr1bclone/app/modules/home/views/subview/opening.dart';
import 'package:dr1bclone/app/modules/home/views/subview/portofolio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../data/dll/font.dart';
import '../../../data/dll/responsive.dart';

class HomeController extends GetxController {
  final autoScrollController = AutoScrollController();

  @override
  void onClose() {
    autoScrollController.dispose();
    super.onClose();
  }

  Future<void> scrollIndex(int index) async {
    return await autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.middle,
      duration: const Duration(seconds: 1),
    );
  }

  List<Widget> listWidget(BuildContext context) => [
        openingPage(context),
        aboutMe(context),
        mySkill(context),
        certificate(context),
        // experience(context),
        portofolio(context),
        closing(context),
      ];

  List bio(BuildContext context) => <Map<String, dynamic>>[
        {
          'nama': 'Muhammad Taufik Ramadhan',
          'style': Font.regular(
            fontSize: responsiveDouble(
              context,
              mobile: 20.0,
              desktop: 30.0,
            ),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        },
        {
          'nama': 'Flutter Developer',
          'style': Font.regular(
            fontSize: responsiveDouble(
              context,
              mobile: 17.0,
              desktop: 27.0,
            ),
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        },
        {
          'nama': 'Android, Website and Desktop',
          'style': Font.regular(
            fontSize: responsiveDouble(
              context,
              mobile: 17.0,
              desktop: 27.0,
            ),
            color: Colors.yellow,
          ),
        }
      ];

  final List<Map<String, dynamic>> buttonAppBar = [
    {
      'label': 'About Me',
      'icon': const ImageIcon(
        AssetImage('assets/button/aboutme.png'),
      ),
      'index': 1,
    },
    {
      'label': 'My Skill',
      'icon': const ImageIcon(
        AssetImage('assets/button/skill.png'),
      ),
      'index': 2,
    },
    {
      'label': 'Certificate',
      'icon': const ImageIcon(
        AssetImage('assets/button/certificate.png'),
      ),
      'index': 3,
    },
    // {
    //   'label': 'Experience',
    //   'icon': const ImageIcon(
    //     AssetImage('assets/button/experience.png'),
    //   ),
    //   'index': 4,
    // },
    {
      'label': 'Portfolio',
      'icon': const ImageIcon(
        AssetImage('assets/button/portofolio.png'),
      ),
      'index': 4,
    },
  ];
}
