import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/dll/font.dart';
import '../data/dll/responsive.dart';

double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

Future<void> launcher(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

final List<Map<String, String>> kontak = [
  {
    'name': 'Telegram',
    'images': 'assets/icon/Telegram.png',
    'url': Url.linkedin,
  },
  {
    'name': 'Gmail',
    'images': 'assets/icon/Gmail.png',
    'url': Url.gmail,
  },
  {
    'name': 'WhatsApp',
    'images': 'assets/icon/WhatsApp.png',
    'url': Url.whatsapp,
  },
];

final List<Map<String, String>> infoKontak = [
  {
    'name': 'LinkedIn',
    'images': 'assets/lottie/linkedin.json',
    'url': Url.linkedin,
  },
  {
    'name': 'Telegram',
    'images': 'assets/lottie/telegram.json',
    'url': Url.linkedin,
  },
  {
    'name': 'Website',
    'images': 'assets/lottie/website.json',
    'url': Url.website,
  },
  {
    'name': 'Gmail',
    'images': 'assets/lottie/gmail.json',
    'url': Url.gmail,
  },
  {
    'name': 'GitHub',
    'images': 'assets/lottie/github.json',
    'url': Url.github,
  },
  {
    'name': 'WhatsApp',
    'images': 'assets/lottie/whatsapp.json',
    'url': Url.whatsapp,
  },
  {
    'name': 'Twitter',
    'images': 'assets/lottie/twitter.json',
    'url': Url.twitter,
  },
  {
    'name': 'YouTube',
    'images': 'assets/lottie/youtube.json',
    'url': Url.youtube,
  },
];

final List<Map<String, String>> listpendidikan = [
  {
    'sekolah': 'SMAN 102 Jakarta',
    'image': Pendidikan.sman102,
    'jurusan': 'MIPA',
    'tahun': '2016 - 2019',
    'url': Url.sman102,
  },
  {
    'sekolah': 'Universitas Gunadarma',
    'image': Pendidikan.gunadarma,
    'jurusan': 'Teknik Informatika',
    'tahun': '2019 - Sekarang',
    'url': Url.gunadarma,
  },
];

class Url {
  static String gunadarma = 'https://www.gunadarma.ac.id/';
  static String sman102 = 'https://sman102jakarta.sch.id/';
  static String youtube = 'https://www.youtube.com/@mtaufikrama624';
  static String linkedin =
      'https://www.linkedin.com/in/muhammad-taufik-ramadhan';
  static String telegram = 'https://t.me/mtaufikrama';
  static String twitter = 'https://twitter.com/MTaufikRama';
  static String whatsapp =
      'https://wa.me/6285831391581?text=I saw your website. I want to hire you in my company.';
  static String github = 'https://github.com/mtaufikrama';
  static String website = 'http://metir.my.id/';
  static String gmail =
      'https://mail.google.com/mail/u/0/?view=cm&tf=1&fs=1&to=mtaufikrama14@gmail.com';
}

String driveGoogle(String id) =>
    'https://drive.google.com/uc?export=view&id=$id';

class Sertif {
  static String _sertif(String id) => 'assets/sertif/$id.jpg';
  static String msib = _sertif('msib');
  static String iot = _sertif('iot');
  static String halofti = _sertif('halofti');
  static String competency = _sertif('competency');
  static String serathon = _sertif('serathon');
}

class Logo {
  static String _logo(String id) => 'assets/logo/$id';
  static String msib = _logo('msib.png');
  static String kampusMerdeka = _logo('kampus_merdeka.png');
  static String edspert = _logo('edspert.png');
  static String bemfti = _logo('bemfti.jpg');
}

class Foto {
  static String fotoprofil = 'assets/foto/pp.png';
}

class Pendidikan {
  static String gunadarma = driveGoogle('1DELTMWn_Yqws9b5CGOUJeXY2OURcgXwD');
  static String sman102 = driveGoogle('1KkDbifIaotKLI1oH4WevfbyXR7ebWgO3');
}
