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
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: teksLanguage(
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
          ),
          SizedBox(
            height: 170,
            child: ClipRRect(
              child: Row(
                children: List.generate(
                    (isi['kontak']!.subtitle as List<List<Kontak>>).length,
                    (index) {
                  List<Kontak> listKontak = isi['kontak']!.subtitle[index];
                  return Expanded(
                      child: Column(
                    children: List.generate(
                      listKontak.length,
                      (indexKontak) {
                        Kontak kontak = listKontak[indexKontak];
                        return TextButton(
                          onPressed: () async => await launcher(kontak.url),
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: ListTile(
                            dense: true,
                            leading: index == 1
                                ? AspectRatio(
                                    aspectRatio: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset(
                                        kontak.image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  )
                                : null,
                            title: Text(
                              kontak.name,
                              style: Font.regular(
                                color: Colors.white,
                              ),
                              textAlign:
                                  index == 0 ? TextAlign.end : TextAlign.start,
                            ),
                            trailing: index == 0
                                ? AspectRatio(
                                    aspectRatio: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset(
                                        kontak.image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                        );
                      },
                    ),
                  ));
                }),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
