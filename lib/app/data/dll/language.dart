import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

import 'local_storage.dart';

Future<String> translates(String text, {String? to}) async {
  String translate;
  try {
    var translates = await GoogleTranslator()
        .translate(text, to: to ?? Storages.getkodeBahasa);
    translate = translates.text;
  } catch (e) {
    translate = text;
  }
  return translate;
}

FutureBuilder<String> translateTeks(
  String text, {
  required TextStyle style,
  TextAlign? textAlign,
}) {
  return FutureBuilder<String>(
    future: translates(text),
    builder: (context, snapshot) {
      if (snapshot.hasData && snapshot.data != null) {
        return Text(
          snapshot.data!.toUpperCase(),
          style: style,
          textAlign: textAlign,
        );
      } else {
        return Text(
          text.toUpperCase(),
          style: style,
          textAlign: textAlign,
        );
      }
    },
  );
}

Widget teksLanguage(
  String text, {
  required TextStyle style,
  TextAlign? textAlign,
}) {
  String kodeBahasa = Storages.getkodeBahasa;
  return kodeBahasa == 'id'
      ? Text(
          text.toUpperCase(),
          style: style,
          textAlign: textAlign,
        )
      : translateTeks(
          text.toUpperCase(),
          style: style,
          textAlign: textAlign,
        );
}
