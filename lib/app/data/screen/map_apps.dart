import 'kontak_data.dart';
import 'myskill_data.dart';
import 'pengalaman_data.dart';
import 'portofolio_data.dart';
import 'sertif_data.dart';

final Map<String, Map<String, dynamic>> isi = {
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
  'kontak': {
    'title': 'Contacts',
    'subtitle': listKontak,
  },
};
