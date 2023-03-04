import 'package:animated_text_kit/animated_text_kit.dart';
import '../controllers/home_controller.dart';
import 'package:dr1bclone/app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

SizedBox openingPage(BuildContext context) {
  var controller = Get.put(HomeController());
  return SizedBox(
    width: getWidth(context),
    height: getHeight(context) <= 500 ? 500 : getHeight(context),
    child: Stack(
      children: [
        ClipRRect(
          child: Lottie.asset(
            'assets/lottie/bg1.json',
            width: getWidth(context),
            height: getHeight(context) <= 500 ? 500 : getHeight(context),
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RepaintBoundary(
                child: Image.asset(
                  Foto.fotoprofil,
                  width: responsive(
                    mobile: 225.0,
                    desktop: 300.0,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                addAutomaticKeepAlives: false,
                itemCount: bio.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return Center(
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          bio[index]['nama'] as String,
                          curve: Curves.linear,
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 150),
                          textStyle: bio[index]['style'] as TextStyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: 'Resume',
                      child: InkWell(
                        onTap: () async => await controller.scrollIndex(5),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/button/resume.png',
                              color: const Color.fromARGB(255, 103, 80, 164),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton.icon(
                      onPressed: iconText,
                      icon: const Icon(
                        Icons.mark_as_unread_sharp,
                        size: 20.0,
                      ),
                      label: Text(
                        "HIRE ME",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: fontGoogle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Tooltip(
                      waitDuration: const Duration(milliseconds: 300),
                      message: 'Portfolio',
                      child: InkWell(
                        onTap: () async => await controller.scrollIndex(5),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/button/portofolio.png',
                              color: const Color.fromARGB(255, 103, 80, 164),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Lottie.asset(
            'assets/lottie/swipe.json',
            height: 100,
          ),
        ),
      ],
    ),
  );
}

void iconText() async {
  Get.defaultDialog(
    title: 'Contact Me'.toUpperCase(),
    titleStyle: fontGoogle(fontSize: 25),
    content: Column(
      children: [
        Lottie.asset(
          'assets/lottie/contact.json',
          height: responsive(
            mobile: 125.0,
            desktop: 150.0,
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: kontak
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Tooltip(
                    waitDuration: const Duration(milliseconds: 250),
                    textStyle: fontGoogle(color: Colors.white),
                    message: e['name'],
                    child: TextButton(
                      child: Image.asset(
                        e['images']!,
                        height: e['name'] == 'Gmail'
                            ? responsive(
                                mobile: 25.0,
                                desktop: 30.0,
                              )
                            : responsive(
                                mobile: 30.0,
                                desktop: 35.0,
                              ),
                      ),
                      onPressed: () => launcher(e['url']!),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    ),
  );
}
