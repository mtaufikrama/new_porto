import 'package:dr1bclone/app/data/dll/font.dart';
import 'package:dr1bclone/app/data/dll/language.dart';
import 'package:dr1bclone/app/data/dll/responsive.dart';
import 'package:dr1bclone/app/data/dll/services.dart';
import 'package:dr1bclone/app/data/object_class/kontak_class.dart';
import 'package:dr1bclone/app/data/screen/inti_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget closing(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(
      color: Colors.black,
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            (isi['kontak']!.title).toUpperCase(),
            style: Font.regular(
              fontSize: responsiveDouble(
                context,
                mobile: 20.0,
                desktop: 30.0,
              ),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      teksLanguage(
                        (isi['kontak']!.title).toUpperCase(),
                        kodeBahasa: Get.parameters['lang'] ?? 'en',
                        style: Font.regular(
                          fontSize: responsiveDouble(
                            context,
                            mobile: 20.0,
                            desktop: 30.0,
                          ),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: List.generate(
                            (isi['kontak']!.subtitle as List<List<Kontak>>)
                                .length, (index) {
                          List<Kontak> listKontak =
                              isi['kontak']!.subtitle[index];
                          return Expanded(
                              child: Column(
                            children: List.generate(
                              listKontak.length,
                              (indexKontak) {
                                Kontak kontak = listKontak[indexKontak];
                                return ListTile(
                                  leading: index == 1
                                      ? CircleAvatar(
                                          backgroundImage: AssetImage(
                                            kontak.image,
                                          ),
                                        )
                                      : null,
                                  title: Text(kontak.name),
                                  trailing: index == 0
                                      ? CircleAvatar(
                                          backgroundImage: AssetImage(
                                            kontak.image,
                                          ),
                                        )
                                      : null,
                                );
                              },
                            ),
                          ));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: (height <= 250 ? 250 : height) - 20,
                width: 1.0,
                color: Colors.white,
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      teksLanguage(
                        (isi['kontak']!.title).toUpperCase(),
                        kodeBahasa: Get.parameters['lang'] ?? 'en',
                        style: Font.regular(
                          fontSize: responsiveDouble(
                            context,
                            mobile: 20.0,
                            desktop: 30.0,
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Column(
                        children: [
                          teksLanguage(
                            "text",
                            kodeBahasa: Get.parameters['lang'] ?? 'en',
                            style: Font.regular(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
