import 'package:dr1bclone/app/services/services.dart';
import 'package:flutter/material.dart';

import '../../../data/dll/font.dart';
import '../../../data/dll/responsive.dart';
import '../../../data/screen/map_apps.dart';

Container aboutMe(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: getWidth(context) / 20),
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          (isi['about']!['title'] as String).toUpperCase(),
          style: Font.regular(
            fontSize: responsive(
              context,
              mobile: 20.0,
              desktop: 30.0,
            ),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          child: Divider(),
        ),
        Text(
          isi['about']!['subtitle'] as String,
          style: Font.regular(
            fontSize: responsive(
              context,
              mobile: 15.0,
              desktop: 20.0,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
