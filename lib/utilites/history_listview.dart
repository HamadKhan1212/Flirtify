import 'package:flutter/material.dart';

import '../screens/new_chat/chating.dart';

class Browse {
  String image;
  String title;
  String subtitle;
  String date;

  Browse({
    required this.subtitle,
    required this.date,
    required this.image,
    required this.title,
  });
}

class HistorySubject extends StatefulWidget {
  const HistorySubject({
    Key? key,
  }) : super(key: key);

  @override
  State<HistorySubject> createState() => _HistorySubjectState();
}

class _HistorySubjectState extends State<HistorySubject> {
  int _current = 0;
  final List<Browse> chatLst = [
    Browse(
      image: 'images/chat4.png',
      title: 'Sarah',
      date: '10:30pm',
      subtitle:
          'Hey there! I usually go for a nice Sunday brunch with friends, catch a matinee...',
    ),
    Browse(
      image: 'images/chat1.png',
      title: 'Lauren',
      date: '08:30pm',
      subtitle:
          'Hmm, let me think. The best opening line I ever received was probably from...',
    ),
    Browse(
      image: 'images/chat2.png',
      title: 'Katie',
      date: '05:30pm',
      subtitle:
          'Hey there! I usually go for a nice Sunday brunch with friends, catch a matinee...',
    ),
    Browse(
      image: 'images/chat3.png',
      title: 'Holly',
      date: 'Yesterday',
      subtitle:
          'Hey there! I usually go for a nice Sunday brunch with friends, catch a matinee...',
    ),
    Browse(
      image: 'images/chat1.png',
      title: 'Jordan',
      date: '04/01/2023',
      subtitle:
          'Hmm, that’s a tough one! I’d have to check my Spotify account to be sure...',
    ),
    Browse(
      image: 'images/chat2.png',
      title: 'Kelly',
      date: '04/01/2023',
      subtitle:
          'Hey there! I usually go for a nice Sunday brunch with friends, catch a matinee...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: chatLst.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _current = index;
                  if (_current == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InboxScreen(
                                  image: chatLst[index].image,
                                )));
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 20, left: 12, right: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            chatLst[index].date,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage('images/forwordIcon.png'),
                            height: 15,
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff3c5ceb), width: 1),
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage(chatLst[index].image),
                                )),
                          ),
                          SizedBox(
                            width: 08,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chatLst[index].title,
                                  style: TextStyle(
                                      fontFamily: 'HurmeSemiBold',
                                      fontSize: 20,
                                      color: Color(
                                        0xff3c5ceb,
                                      )),
                                ),
                                Text(
                                  chatLst[index].subtitle,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
