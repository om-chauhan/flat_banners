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
    final data = DataController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Banners Example'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            Text(
              'ListView Builder (Horizontal Scrolling)',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 105,
              child: ListView.builder(
                itemCount: data.dataList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FlatBanners(
                      onPressed: () {},
                      subtitle: data.dataList[index].subTitle,
                      title: data.dataList[index].title,
                      btnText: data.dataList[index].actionText,
                      image: data.dataList[index].image,
                      imageWidth: 50,
                      gradientColors: data.dataList[index].gradientColors,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'ListView Builder (Vertical Scrolling)',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10.0),
            ListView.builder(
              itemCount: data.dataList.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: FlatBanners(
                    onPressed: () {},
                    subtitle: data.dataList[index].subTitle,
                    title: data.dataList[index].title,
                    btnText: data.dataList[index].actionText,
                    image: data.dataList[index].image,
                    imageWidth: 50,
                    gradientColors: data.dataList[index].gradientColors,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
