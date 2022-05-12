import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomaPage(),
    );
  }
}

class HomaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: appBar(),
      bottomNavigationBar: bottomNavBar(),
      body: body(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
        backgroundColor: kBlackColor,
        centerTitle: false,
        title: Row(children: [
          Container(
            width: 103,
            height: 29,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_logo.png',
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_add.png',
                ),
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_love.png',
                ),
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_send.png',
                ),
              ),
            ),
          ),
        ]));
  }

  Widget bottomNavBar() {
    return Container(
      color: kLineColor,
      padding: EdgeInsets.only(
        top: 1,
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        color: kBlackColor,
        child: BottomNavigationBar(
          backgroundColor: kBlackColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          elevation: 1,
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_home.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_search.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_reels.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_shop.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile1.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              StoryItem(
                imageUrl: 'assets/profile_story.png',
                title: 'Cerita Anda',
              ),
              StoryItem(
                imageUrl: 'assets/hoshi.png',
                title: 'ho5hi_kwon',
              ),
              StoryItem(
                imageUrl: 'assets/lisa.png',
                title: 'lalalisama...',
              ),
              StoryItem(
                imageUrl: 'assets/image_story4.png',
                title: 'buildwith...',
              ),
              StoryItem(
                imageUrl: 'assets/suga.png',
                title: 'agustd',
              ),
              StoryItem(
                imageUrl: 'assets/jennie.png',
                title: 'jennieruby...',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/profile1.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'linao',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/seventeen.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/profile_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'sooyaa_ dan 99 lainnya',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'linao',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  SEVENTEEN FANMEETING  ',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 86 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/profile1.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tambahkan komentar ...',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/profile1.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'linao',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/image_post2.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/profile_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Disukai oleh ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'sooyaa_ dan 79 lainnya',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'linao',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  Movie Streaming - UI Design Mobile',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Lihat semua 86 komentar',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/profile1.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tambahkan komentar ...',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            margin: EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
