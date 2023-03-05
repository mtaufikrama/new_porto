import 'package:bordered_text/bordered_text.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:dr1bclone/app/modules/portfolio/controllers/portfolio_controller.dart';
import 'package:dr1bclone/app/modules/portfolio/views/imagepage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../data/dll/font.dart';
import '../../../data/screen/map_apps.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> porto =
        isi['portofolio']!['subtitle'][int.parse(Get.parameters['id']!)];
    return Scaffold(
      backgroundColor: porto['color']['primary'] as Color,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                    right: 20,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: porto['color']['second'] as Color,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(porto['logo'] as String),
                      ),
                      BorderedText(
                        strokeWidth: 1.5,
                        strokeColor: Colors.black,
                        child: Text(
                          (porto['nama'] as String).toUpperCase(),
                          style: Font.regular(
                            letterSpacing: 2,
                            color: porto['color']['primary'] as Color,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    porto['deskripsi'].toUpperCase(),
                    style: Font.regular(
                      color: porto['color']['second'] as Color,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: (porto['team'] as List).length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        Map<String, String> team = porto['team'][index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          child: SlideAnimation(
                            horizontalOffset: 80.0,
                            duration: const Duration(seconds: 1),
                            child: FadeInAnimation(
                              duration: const Duration(seconds: 1),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Hero(
                                  tag: team['image']!,
                                  child: GestureDetector(
                                    onTap: () => context.pushTransparentRoute(
                                      ImagepageView(
                                        team: team,
                                        tagName: team['image']!,
                                      ),
                                      reverseTransitionDuration:
                                          const Duration(milliseconds: 500),
                                      transitionDuration:
                                          const Duration(milliseconds: 500),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                            offset: Offset(3, 2),
                                            color: Colors.black45,
                                          ),
                                        ],
                                        color:
                                            porto['color']['primary'] as Color,
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                          image: AssetImage(team['image']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    porto['tujuan'].toUpperCase(),
                    style: Font.regular(
                      color: porto['color']['second'] as Color,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.asset(
                    porto['frame'] as String,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  color: porto['color']['second'] as Color,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        color: Colors.white,
                        child: Text(
                          'features'.toUpperCase(),
                          style: Font.regular(
                            color: porto['color']['second'] as Color,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: List.generate(
                            (porto['fitur'] as List<String>).length,
                            (index) => Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                  child: Text(
                                    'o',
                                    style: Font.regular(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    porto['fitur'][index] as String,
                                    style: Font.regular(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  color: porto['color']['second'] as Color,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        color: Colors.white,
                        child: Text(
                          'technology'.toUpperCase(),
                          style: Font.regular(
                            color: porto['color']['second'] as Color,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: List.generate(
                            (porto['teknologi'] as List<String>).length,
                            (index) => Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                  child: Text(
                                    'o',
                                    style: Font.regular(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    porto['teknologi'][index] as String,
                                    style: Font.regular(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
