# flat_banners

[![pub package](https://img.shields.io/pub/v/flat_banners.svg)](https://pub.dev/packages/flat_banners)

A Flutter package for Offers, Promo and Invites banners. Android support
Android and Web.

## Usage

To use this plugin, add `flat_banners` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

## Demo

<img src="https://github.com/om-chauhan/flat_banners/blob/master/banners-package-demo.gif" height="500" />

### Example

```dart
import 'package:flutter/material.dart';
import 'package:flat_banners/flat_banners.dart';
import 'package:example/controller/data_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banners Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatBanners(
        imageWidth: 50,
        gradientColors: [
          const Color(0xff6C59D4).withOpacity(0.9),
          const Color(0xff869DFB).withOpacity(0.7),
        ],
        title: 'Get 500 Coins by Referring',
        subtitle: 'Games are Fun with Friends!',
        btnText: 'Refer a friend',
        image: 'assets/icons/social-media.png',
        onPressed: () {},
      ),
    );
  }
}
```

See the example app for more complex examples.

## Screenshot

|                                        horizontal vertical view banners                                        |                                        vertical view banners                                        |
| :------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/om-chauhan/flat_banners/blob/master/horizontal-vertical-view.jpg" height="400" /> | <img src="https://github.com/om-chauhan/flat_banners/blob/master/vertical-view.jpg" height="400" /> |
