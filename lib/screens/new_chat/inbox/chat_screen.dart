import 'dart:ui';

import 'package:flirtify/screens/new_chat/settings.dart';
import 'package:flutter/material.dart';

import '../../../utilites/history_listview.dart';
import '../../../utilites/reusable_text.dart';
import '../new_chat_dialoge.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcad7ff),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff113694),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image(
          image: AssetImage("images/logo.PNG"),
          height: 30,
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF3c5ceb),
                          Color(0xFF3c5ceb),
                          Color(0xFF54b4eb),
                        ])),
                child: Text(
                  'Upgrade',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'HurmesemiBold',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            color: Color(0xff113694),
            child: Row(
              children: [
                Text(
                  'Chats',
                  style: TextStyle(
                      color: Color(0xff54b4eb),
                      fontFamily: 'HurmeBold',
                      fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'HurmeBold',
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          HistorySubject(),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(1, 0),
                    blurRadius: 20,
                    spreadRadius: 30)
              ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ChatDialog();
                          },
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff000a80),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 17),
                            child: Image(
                              image: AssetImage('images/new_image.png'),
                              height: 26,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45),
                                    topRight: Radius.circular(45))),
                            context: context,
                            builder: (context) => BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: BottomSheet()));
                      },
                      child: Container(
                          padding: EdgeInsets.all(17),
                          decoration: BoxDecoration(
                              color: Color(0xff53b4ea),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Opening Line',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          )),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF3c5ceb),
                  Color(0xFF3c5ceb),
                  Color(0xFF54b4eb),
                  Color(0xFF3c5ceb),
                ])),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
              title: '',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  ReusableText(
                    title: 'Upgrade',
                    fontFamily: 'Hurmeregular',
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('images/logo.PNG'),
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.clear,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        color: Color(0xff113694),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Get 1 Week of Free',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'HurmeRegular',
                ),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' Unlimited\nMessaging ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontFamily: 'HurmeBold',
                      )),
                  TextSpan(
                    text: 'for each friend\nwho joins with your invite',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'HurmeRegular',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff000a80),
                ),
                child: ReusableText(
                  title: 'Share',
                  color: Colors.white,
                  fontFamily: 'HurmeBold',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                            Color(0xFF3c5ceb),
                            Color(0xFF54b4eb),
                            Color(0xFF3c5ceb),
                          ])),
                      height: 1.5,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReusableText(
                      title: 'or',
                      size: 23,
                      weight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                            Color(0xFF3c5ceb),
                            Color(0xFF54b4eb),
                            Color(0xFF3c5ceb),
                          ])),
                      height: 1.5,
                      width: double.infinity,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'images/container.png',
                    ),
                    height: 200,
                  ),
                  Column(
                    children: [
                      ReusableText(
                          title: 'Unlock the Unlimited Plan',
                          size: 20,
                          color: Colors.white,
                          fontFamily: 'HurmeRegular'),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '\$ ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '6.99',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'HurmeBold')),
                            TextSpan(
                                text: ' / month',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'HurmeReugular',
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xff53b4ea),
                                    borderRadius: BorderRadius.circular(15)),
                                child: ReusableText(
                                    color: Colors.white,
                                    title: 'Unlock',
                                    size: 18,
                                    fontFamily: 'HurmeBold'),
                              ),
                            ),
                            Image(
                              image: AssetImage('images/unlocklogo.png'),
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ReusableText(
              textAlign: TextAlign.center,
              title:
                  'Subscriptions will renew unless canceled in\niCloud subscription settings.',
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: ReusableText(
                textAlign: TextAlign.center,
                title: 'Terms and Privacy',
                color: Color(0xff54b4eb),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      )
    ]);
  }
}
