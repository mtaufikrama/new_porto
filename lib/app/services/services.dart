import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

responsive({
  required dynamic mobile,
  required dynamic desktop,
  dynamic tablet,
  dynamic iOS,
  dynamic macOS,
}) {
  final String orientation = MediaQuery.of(Get.context!).orientation.name;
  final double width = Get.width;
  if (kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    if (width <= 850.toDouble()) {
      return mobile;
    } else if (width <= 1100.toDouble()) {
      return tablet ?? desktop;
    } else {
      return desktop;
    }
  } else {
    if (Platform.isAndroid) {
      if (orientation == 'landscape') {
        return tablet ?? desktop;
      } else {
        return mobile;
      }
    } else if (Platform.isIOS) {
      if (orientation == 'landscape') {
        return macOS ?? tablet ?? iOS ?? desktop;
      } else {
        return iOS ?? mobile;
      }
    }
  }
}

double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

List<Map<String, String>> listCertificate = [
  {
    'title': 'Sertifikat Kompetensi MSIB',
    'image': Sertif.competency,
    'logo': Logo.kampusMerdeka,
  },
  {
    'title': 'Sertifikat MSIB',
    'image': Sertif.msib,
    'logo': Logo.kampusMerdeka,
  },
  {
    'title': 'Sertifikat Webinar IoT',
    'image': Sertif.iot,
    'logo': Logo.edspert,
  },
  {
    'title': 'Sertifikat Seminar HALO FTI',
    'image': Sertif.halofti,
    'logo': Logo.bemfti,
  },
  {
    'title': 'Sertifikat Seminar Serathon 2.0',
    'image': Sertif.serathon,
    'logo': Logo.bemfti,
  },
];

Future<void> launcher(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

TextStyle fontGoogle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return GoogleFonts.courierPrime(
    color: color,
    letterSpacing: letterSpacing,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

List bio = <Map<String, dynamic>>[
  {
    'nama': 'Muhammad Taufik Ramadhan',
    'style': fontGoogle(
      fontSize: responsive(
        mobile: 20.0,
        desktop: 30.0,
      ),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  },
  {
    'nama': 'Flutter Developer',
    'style': fontGoogle(
      fontSize: responsive(
        mobile: 17.0,
        desktop: 27.0,
      ),
      fontWeight: FontWeight.bold,
      color: Colors.yellow,
    ),
  },
  {
    'nama': 'Android, Website and Desktop',
    'style': fontGoogle(
      fontSize: responsive(
        mobile: 17.0,
        desktop: 27.0,
      ),
      color: Colors.yellow,
    ),
  }
];

Map<String, Map<String, dynamic>> isi = {
  'about': {
    'title': 'About Me',
    'subtitle':
        "I am an expert in the field of Mobile Developer using the Flutter framework. Currently, I am a student majoring in Informatics at Gunadarma University with a current total GPA of 3.48. I'm learning the Flutter framework and I like to experiment with things. I am a conscientious, patient and reliable person.",
  },
  'soft_skill': {
    'title': 'Soft Skill',
    'subtitle': listSoftSkill,
  },
  'hard_skill': {
    'title': 'Hard Skill',
    'subtitle': listHardSkill,
  },
  'certificate': {
    'title': 'Certificate',
    'subtitle': listCertificate,
  },
  'experience': {
    'title': 'Experience',
    'subtitle': listPengalaman,
  },
  'portofolio': {
    'title': 'Portfolio',
    'subtitle': listPortofolio,
  },
};

final List<Map<String, dynamic>> listPengalaman = [
  {
    'nama': 'Pengalaman',
    'logo': 'assets/portofolio/thrilogic.jpg',
    'url_android':
        'https://drive.google.com/file/d/1gr7DVu--S19YRBuGI7qhmE4NRzJFpt-u/view?usp=share_link',
    'url_website': 'https://thrilogic.metir.my.id/',
    'deskripsi':
        'MeCrypt adalah aplikasi simulasi cryptocurrency yang memungkinkan pengguna untuk membeli dan melacak nilai tukar berbagai cryptocurrency seperti Bitcoin, Ethereum, dan Litecoin. Aplikasi ini memiliki fitur real-time yang memungkinkan pengguna untuk melihat harga cryptocurrency yang diperbarui terus menerus.',
    'fitur': [
      'Memiliki daftar cryptocurrency populer untuk dipilih dan melacak',
      'Data di simpan secara local menggunakan package Hive',
      'Terdapat fitur wishlist agar user dapat memantau cryptocurrency yang ingin di beli kemudian hari',
      'User Interface menarik dan dark mode agar nyaman untuk dilihat',
    ],
    'teknologi': [
      'Flutter sebagai framework untuk pengembangan aplikasi mobile',
      'Hive sebagai local database',
      'Indodax API untuk mendapatkan data nilai tukar cryptocurrency secara real-time',
    ],
    'keuntungan': [
      'Mengajarkan pengguna tentang dunia cryptocurrency secara interaktif dan aman',
      'Memberikan pengalaman nyata dalam melakukan trading cryptocurrency tanpa resiko kehilangan uang sungguhan',
      'Memberikan pemahaman yang lebih baik tentang perilaku pasar cryptocurrency',
      'Membuat pengguna menjadi lebih terbiasa dengan penggunaan teknologi blockchain dan kriptografi',
    ],
  },
];
final listPortofolio = <Map<String, dynamic>>[
  {
    'nama': 'ThriLogic',
    'logo': 'assets/portofolio/thrilogic.jpg',
    'frame': 'assets/portofolio/frame_thrilogic.png',
    'color': {
      'primary': const Color.fromRGBO(255, 110, 42, 1),
      'second': const Color.fromRGBO(166, 87, 55, 1),
    },
    'team': [
      {
        'image': 'assets/portofolio/taufik.png',
        'nama': 'Muhammad Taufik Ramadhan',
        'sebagai': 'Project Manager & UX Developer',
      },
      {
        'image': 'assets/portofolio/roni.png',
        'nama': 'Roni Setiawan',
        'sebagai': 'UI / UX Designer',
      },
      {
        'image': 'assets/portofolio/delvy.png',
        'nama': 'Delvy Toding Sandatoding',
        'sebagai': 'UI Developer',
      },
      {
        'image': 'assets/portofolio/yozi.png',
        'nama': 'Yozi Berlinda',
        'sebagai': 'UI Developer',
      },
    ],
    'url_android':
        'https://drive.google.com/file/d/1gr7DVu--S19YRBuGI7qhmE4NRzJFpt-u/view?usp=share_link',
    'url_website': 'https://thrilogic.metir.my.id/',
    'deskripsi':
        'ThriLogic adalah aplikasi yang mempermudah pengguna untuk membeli produk thrift atau barang bekas berkualitas dengan harga terbaik. Pengguna dapat membeli produk thrift secara online dan menikmati pengalaman belanja yang lebih nyaman dan efisien.',
    'fitur': [
      'Memiliki fitur light mode dan dark mode agar pengguna lebih nyaman dalam berbelanja',
      'Kemampuan admin untuk menambah, mengupdate, dan menghapus produk',
      'Menggunakan package lottie untuk animasi yang membuat UI lebih menarik.',
    ],
    'teknologi': [
      'Flutter sebagai framework untuk pengembangan aplikasi android dan website',
      'Provider sebagai State Management',
      'API dari Mitra Nurul Fikri untuk membaca, menambahkan, mengupdate dan menghapus data produk',
    ],
    'keuntungan': [
      'Mengajarkan pengguna tentang dunia cryptocurrency secara interaktif dan aman',
      'Memberikan pengalaman nyata dalam melakukan trading cryptocurrency tanpa resiko kehilangan uang sungguhan',
      'Memberikan pemahaman yang lebih baik tentang perilaku pasar cryptocurrency',
      'Membuat pengguna menjadi lebih terbiasa dengan penggunaan teknologi blockchain dan kriptografi',
    ],
  },
  {
    'nama': 'MeCrypt',
    'logo': 'assets/portofolio/mecrypt.jpg',
    'frame': 'assets/portofolio/frame_mecrypt.png',
    'color': {
      'primary': const Color.fromARGB(255, 0, 6, 183),
      'second': const Color.fromRGBO(0, 16, 71, 1),
    },
    'Team': [
      {
        'image': 'assets/portofolio/taufik.png',
        'nama': 'Muhammad Taufik Ramadhan',
        'sebagai': 'Project Manager & UX Developer',
      },
    ],
    'url_android':
        'https://drive.google.com/file/d/1RFVZZ3LsXYMnW0IpzL6U_PTuWEue5o0g/view?usp=share_link',
    'url_website': 'https://mecrypt.metir.my.id/',
    'deskripsi':
        'MeCrypt adalah aplikasi simulasi cryptocurrency yang memungkinkan pengguna untuk membeli dan melacak nilai tukar berbagai cryptocurrency seperti Bitcoin, Ethereum, dan Litecoin. Aplikasi ini memiliki fitur real-time yang memungkinkan pengguna untuk melihat harga cryptocurrency yang diperbarui terus menerus.',
    'fitur': [
      'Memiliki daftar cryptocurrency populer untuk dipilih dan melacak',
      'Data di simpan secara local menggunakan package Hive',
      'Terdapat fitur wishlist agar user dapat memantau cryptocurrency yang ingin di beli kemudian hari',
      'User Interface menarik dan dark mode agar nyaman untuk dilihat',
    ],
    'teknologi': [
      'Flutter sebagai framework untuk pengembangan aplikasi mobile',
      'Hive sebagai local database',
      'Indodax API untuk mendapatkan data nilai tukar cryptocurrency secara real-time',
    ],
    'keuntungan': [
      'Mengajarkan pengguna tentang dunia cryptocurrency secara interaktif dan aman',
      'Memberikan pengalaman nyata dalam melakukan trading cryptocurrency tanpa resiko kehilangan uang sungguhan',
      'Memberikan pemahaman yang lebih baik tentang perilaku pasar cryptocurrency',
      'Membuat pengguna menjadi lebih terbiasa dengan penggunaan teknologi blockchain dan kriptografi',
    ],
  },
];

final listSoftSkill = [
  {
    'Problem Solving': 91.0,
  },
  {
    'Kreativitas': 91.0,
  },
  {
    'Kerjasama': 89.0,
  },
  {
    'Komunikasi': 86.0,
  },
  {
    'Time Management': 88.0,
  },
];
final listHardSkill = [
  {
    'Figma': 79.0,
  },
  {
    'Flutter': 94.0,
  },
  {
    'Firebase': 85.0,
  },
  {
    'Arduino': 80.0,
  },
  {
    'MySQL': 84.0,
  },
];

final kontak = <Map<String, String>>[
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

final infoKontak = [
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

final listpendidikan = [
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

final listBahasa = [
  {
    'kode': 'en',
    'bahasa': 'Bahasa Inggris',
  },
  {
    'kode': 'id',
    'bahasa': 'Bahasa Indonesia',
  },
  {
    'kode': 'jw',
    'bahasa': 'Bahasa Jawa',
  },
  {
    'kode': 'su',
    'bahasa': 'Bahasa Sunda',
  },
  {
    'kode': 'ms',
    'bahasa': 'Bahasa Melayu',
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

// class Storages {
//   static LocalStorage storages = LocalStorage('myporto');

//   Future<void> setKodeBahasa(String kodeBahasa) async {
//     await storages.deleteItem('kodeBahasa');
//     await storages.setItem('kodeBahasa', kodeBahasa);
//   }

//   Future<void> setIndexLanguage(int index) async {
//     await storages.deleteItem('indexLanguage');
//     await storages.setItem('indexLanguage', index);
//   }

//   static String getkodeBahasa() => storages.getItem('kodeBahasa') ?? 'id';
//   static int getIndexLanguage() => storages.getItem('indexLanguage') ?? 0;
// }

// Future<String> translates(String text, {String? to}) async {
//   String translate;
//   try {
//     var translates = await GoogleTranslator()
//         .translate(text, to: to ?? Storages.getkodeBahasa());
//     translate = translates.text;
//   } catch (e) {
//     translate = text;
//   }
//   return translate;
// }

// FutureBuilder<String> translateTeks(
//   String text, {
//   required TextStyle style,
//   TextAlign? textAlign,
// }) {
//   return FutureBuilder<String>(
//     future: translates(text),
//     builder: (context, snapshot) {
//       if (snapshot.hasData && snapshot.data != null) {
//         return Text(
//           snapshot.data!.toUpperCase(),
//           style: style,
//           textAlign: textAlign,
//         );
//       } else {
//         return Text(
//           text.toUpperCase(),
//           style: style,
//           textAlign: textAlign,
//         );
//       }
//     },
//   );
// }

// Widget teksLanguage(
//   String text, {
//   required TextStyle style,
//   TextAlign? textAlign,
// }) {
//   String kodeBahasa = Storages.getkodeBahasa();
//   return kodeBahasa == 'id'
//       ? Text(
//           text.toUpperCase(),
//           style: style,
//           textAlign: textAlign,
//         )
//       : translateTeks(
//           text.toUpperCase(),
//           style: style,
//           textAlign: textAlign,
//         );
// }
