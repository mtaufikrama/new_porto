import 'package:dr1bclone/app/data/dll/font.dart';
import 'package:dr1bclone/app/data/dll/language.dart';
import 'package:dr1bclone/app/data/dll/responsive.dart';
import 'package:dr1bclone/app/data/dll/services.dart';
import 'package:dr1bclone/app/data/object_class/certificate_class.dart';
import 'package:dr1bclone/app/data/screen/inti_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container certificate(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(color: Colors.red),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          teksLanguage(
            (isi['certificate']!.title).toUpperCase(),
            kodeBahasa: Get.parameters['lang'] ?? 'en',
            style: Font.regular(
              color: Colors.white,
              fontSize: responsiveDouble(
                context,
                mobile: 20.0,
                desktop: 30.0,
              ),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: (isi['certificate']!.subtitle as List).length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Certificate skill = isi['certificate']!.subtitle[index];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 250,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              skill.image,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.black, Colors.transparent],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    skill.logo,
                                  ),
                                ),
                                title: teksLanguage(
                                  skill.nama,
                                  kodeBahasa: Get.parameters['lang'] ?? 'en',
                                  style: Font.regular(
                                    color: Colors.white,
                                    fontSize: responsiveDouble(
                                      context,
                                      mobile: 10.0,
                                      desktop: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
