import 'package:flutter/material.dart';

final listPortofolio = <Map<String, dynamic>>[
  {
    'nama': 'ThriLogic',
    'logo': 'assets/portofolio/thrilogic.jpg',
    'frame': 'assets/portofolio/frame_thrilogic.png',
    'color': {
      'primary': const Color.fromRGBO(255, 110, 42, 1),
      'second': const Color.fromRGBO(166, 87, 55, 1),
    },
    'tujuan':
        'ThriLogic was created to simplify the process of buying thrift products or quality used goods at the best prices. This application helps users find the items they want at a more affordable price.',
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
        'ThriLogic is an application that makes it easier for users to buy thrift products or quality used goods at the best prices. Users can purchase thrift products online and enjoy a more convenient and efficient shopping experience.',
    'fitur': [
      'It has light mode and dark mode features so that users are more comfortable in shopping.',
      'Admin ability to add, update, and delete products.',
      'Uses the lottie package for animation which makes the UI more attractive.',
    ],
    'teknologi': [
      'Flutter as a framework for developing android applications and websites.',
      'Provider as State Management.',
      'API from Mitra Nurul Fikri to read, add, update and delete products data.',
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
    'tujuan':
        'MeCrypt aims to allow users to simulate crypto currency transactions before making actual transactions.',
    'team': [
      {
        'image': 'assets/portofolio/taufik.png',
        'nama': 'Muhammad Taufik Ramadhan',
        'sebagai': 'All Jobs',
      },
    ],
    'url_android':
        'https://drive.google.com/file/d/1RFVZZ3LsXYMnW0IpzL6U_PTuWEue5o0g/view?usp=share_link',
    'url_website': 'https://mecrypt.metir.my.id/',
    'deskripsi':
        'MeCrypt is a cryptocurrency simulation application that allows users to buy and track the exchange rates of various cryptocurrencies such as Bitcoin, Ethereum and Litecoin. This app has a real-time feature that allows users to view continuously updated prices of cryptocurrencies.',
    'fitur': [
      'Has a list of popular cryptocurrencies to choose from and track.',
      'Data is stored locally using the Hive package.',
      'There is a wishlist feature so users can monitor the cryptocurrency they want to buy later.',
      'Attractive User Interface and dark mode to make it comfortable to look at.',
    ],
    'teknologi': [
      'Flutter as a framework for developing mobile applications and websites.',
      'Hive as local database.',
      'Indodax API to get real-time cryptocurrency exchange rate data.',
    ],
  },
  {
    'nama': 'Crofflite',
    'logo': 'assets/portofolio/crofflite.png',
    'frame': 'assets/portofolio/frame_crofflite.png',
    'color': {
      'primary': const Color.fromARGB(255, 251, 209, 123),
      'second': const Color.fromARGB(255, 238, 163, 38),
    },
    'tujuan':
        'Crofflite is designed to help croffle sellers optimize their business and increase efficiency in managing queues and finances every day.',
    'team': [
      {
        'image': 'assets/portofolio/taufik.png',
        'nama': 'Muhammad Taufik Ramadhan',
        'sebagai': 'All Jobs',
      },
    ],
    'url_android':
        'https://drive.google.com/file/d/1RFVZZ3LsXYMnW0IpzL6U_PTuWEue5o0g/view?usp=share_link',
    'url_website': 'https://mecrypt.metir.my.id/',
    'deskripsi':
        'Crofflite is an application to help croffle sellers manage their customer queues and daily financial planning.',
    'fitur': [
      'Has a buyer queue feature that allows croffle sellers to see the number of buyers waiting in the queue.',
      'Calculates the croffle sellers daily sales turnover based on the sales data entered.',
      'Has a feature to calculate the total purchases of each buyer, so sellers can easily find out the contribution of each buyer to their sales.',
      'Sellers can view their overall sales performance and perform further analysis.',
    ],
    'teknologi': [
      'Flutter as a framework for developing mobile applications and websites.',
      'Localstorage as local database.',
    ],
  },
];
