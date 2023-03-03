// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:scroll_to_id/scroll_to_id.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

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

  final List<Map<String, dynamic>> buttonAppBar = [
    {
      'label': 'About Me',
      'icon': const ImageIcon(
        AssetImage('assets/button/aboutme.png'),
      ),
      'onPressed': 1,
    },
    {
      'label': 'My Skill',
      'icon': const ImageIcon(
        AssetImage('assets/button/skill.png'),
      ),
      'onPressed': 2,
    },
    {
      'label': 'Certificate',
      'icon': const ImageIcon(
        AssetImage('assets/button/certificate.png'),
      ),
      'onPressed': 3,
    },
    {
      'label': 'Experience',
      'icon': const ImageIcon(
        AssetImage('assets/button/experience.png'),
      ),
      'onPressed': 4,
    },
    {
      'label': 'Portfolio',
      'icon': const ImageIcon(
        AssetImage('assets/button/portofolio.png'),
      ),
      'onPressed': 5,
    },
  ];
}
