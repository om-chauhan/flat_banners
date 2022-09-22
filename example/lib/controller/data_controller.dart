import 'package:example/model/data_model.dart';
import 'package:flutter/material.dart';

class DataController {
  final dataList = [
    DataModel(
      title: 'Get 500 Coins by Referring',
      subTitle: 'Games are Fun with Friends!',
      image: 'assets/icons/social-media.png',
      actionText: 'Refer a friend',
      actionBgColor: const Color(0xff5957AB),
      gradientColors: [
        const Color(0xff6C59D4).withOpacity(0.9),
        const Color(0xff869DFB).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Get 1,000 Coins to play!',
      subTitle: 'Want to get better and win more!',
      image: 'assets/icons/coins.png',
      actionText: 'Try Practice Leagues',
      actionBgColor: const Color(0xff5D808C),
      gradientColors: [
        const Color(0xff48A2EC).withOpacity(0.9),
        const Color(0xffEDD177).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Get Your Diwali Gift',
      subTitle: 'Celebrate Diwali with Friends!',
      image: 'assets/icons/giftbox.png',
      actionText: 'Claim Now',
      actionBgColor: const Color(0xff4C3063),
      gradientColors: [
        const Color(0xff270047).withOpacity(0.9),
        const Color(0xff3B0148).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Results Announced',
      subTitle: 'Shubh Festival Contest - Edition 1',
      image: 'assets/icons/trophy.png',
      actionText: 'View Winners',
      actionBgColor: const Color(0xff844595),
      gradientColors: [
        const Color(0xff8D2195).withOpacity(0.9),
        const Color(0xff3D297B).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Candy Bust is now available',
      subTitle: 'Are you a candy crush player ?',
      image: 'assets/icons/stars.png',
      actionText: 'Play Now',
      actionBgColor: const Color(0xffBE6692),
      gradientColors: [
        const Color(0xffFB83C6).withOpacity(0.9),
        const Color(0xffFFD65E).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Join now with friends!',
      subTitle: 'Shubh Festival Contest is here!',
      image: 'assets/icons/gift.png',
      actionText: 'Join Now',
      actionBgColor: const Color(0xff35BCAF),
      gradientColors: [
        const Color(0xff15C68B).withOpacity(0.9),
        const Color(0xff0288C3).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Lucky winners get ₹50',
      subTitle: 'Shubh Festival Contest is here!',
      image: 'assets/icons/bonus.png',
      actionText: 'Join Now',
      actionBgColor: const Color(0xff9771BB),
      gradientColors: [
        const Color(0xff8591F3).withOpacity(0.9),
        const Color(0xffFA75B0).withOpacity(0.7),
      ],
    ),
    DataModel(
      title: 'Vote for your fav Game!',
      subTitle: 'Whats the best Game in MGPL App?',
      image: 'assets/icons/analytics.png',
      actionText: 'Vote Now',
      actionBgColor: const Color(0xffB2615D),
      gradientColors: [
        const Color(0xffEC8A6D).withOpacity(0.9),
        const Color(0xffED709B).withOpacity(0.7),
      ],
    ),
  ];
}
