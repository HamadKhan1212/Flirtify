import 'package:flutter/material.dart';

import '../../utilites/reusable_text.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool question1 = false;
  bool question2 = false;
  bool question3 = false;
  bool question4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff113694),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(''),
            Image(
              image: AssetImage("images/logo.PNG"),
              height: 30,
            ),
            InkWell(
              onTap: () {},
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
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              color: Color(0xff113694),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: AssetImage('images/arrowBackword.png'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'HurmeBold',
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Contact',
                    color: Color(0xff3c5ceb),
                    fontFamily: 'HurmeBold',
                    size: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'Email Us',
                        weight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff53b4ea),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'HurmeSemiBold',
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Image(
                                image: AssetImage('images/send_icon.png'),
                              ),
                              border: InputBorder.none,
                              hintText: 'abc@gmail.com'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xff000a80),
                              borderRadius: BorderRadius.circular(15)),
                          child: ReusableText(
                            title: 'Share',
                            size: 20,
                            color: Colors.white,
                            fontFamily: 'HurmeSemiBold',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xff000a80),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('images/star_icon.png'),
                                height: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ReusableText(
                                title: 'Rate Flirtify',
                                size: 20,
                                color: Colors.white,
                                fontFamily: 'HurmeSemiBold',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableText(
                    title: 'FAQ section',
                    color: Color(0xff3c5ceb),
                    fontFamily: 'HurmeBold',
                    size: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            question1 = !question1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffcad7ff)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title: 'How does Flirtify work?',
                                weight: FontWeight.bold,
                                fontFamily: 'HurmeBold',
                              ),
                              Icon(
                                question1 ? Icons.remove : Icons.add,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: question1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15),
                          child: ReusableText(
                            title:
                                'Flirtify harnesses the power of a customized GPT-4 AI model from OpenAI to help you break the ice, build rapport, and secure more in-person dates. The AI is designed to keep conversations engaging and respectful while suggesting timely meetups. A personality slider allows you to adjust the AI\'s energy between friendly, flirty, and frisky for a personalized experience.\n\nSimply tap the AI-generated message to instantly copy it, ready to be pasted into your preferred messaging or dating app. If you\'re looking for alternative suggestions, simply tap refresh to generate a new reply, ensuring that you always have the perfect response at your fingertips.',
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            question2 = !question2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffcad7ff)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title:
                                    'What’s the difference between New\nChat and Generate Opener?',
                                weight: FontWeight.bold,
                                fontFamily: 'HurmeBold',
                              ),
                              Icon(
                                question2 ? Icons.remove : Icons.add,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: question2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15),
                          child: ReusableText(
                            title:
                                'Flirtify harnesses the power of a customized GPT-4 AI model from OpenAI to help you break the ice, build rapport, and secure more in-person dates. The AI is designed to keep conversations engaging and respectful while suggesting timely meetups. A personality slider allows you to adjust the AI\'s energy between friendly, flirty, and frisky for a personalized experience.\n\nSimply tap the AI-generated message to instantly copy it, ready to be pasted into your preferred messaging or dating app. If you\'re looking for alternative suggestions, simply tap refresh to generate a new reply, ensuring that you always have the perfect response at your fingertips.',
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            question3 = !question3;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffcad7ff)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title:
                                    'Isn’t using Flirtify to message\npeople dishonest?',
                                weight: FontWeight.bold,
                                fontFamily: 'HurmeBold',
                              ),
                              Icon(
                                question3 ? Icons.remove : Icons.add,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                          visible: question3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 15),
                            child: ReusableText(
                              title:
                                  'Flirtify harnesses the power of a customized GPT-4 AI model from OpenAI to help you break the ice, build rapport, and secure more in-person dates. The AI is designed to keep conversations engaging and respectful while suggesting timely meetups. A personality slider allows you to adjust the AI\'s energy between friendly, flirty, and frisky for a personalized experience.\n\nSimply tap the AI-generated message to instantly copy it, ready to be pasted into your preferred messaging or dating app. If you\'re looking for alternative suggestions, simply tap refresh to generate a new reply, ensuring that you always have the perfect response at your fingertips.',
                              size: 15,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            question4 = !question4;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffcad7ff)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title: 'How does Flirtify protect my privacy?',
                                weight: FontWeight.bold,
                                fontFamily: 'HurmeBold',
                              ),
                              Icon(
                                question4 ? Icons.remove : Icons.add,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                          visible: question4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 15),
                            child: ReusableText(
                              title:
                                  'Flirtify harnesses the power of a customized GPT-4 AI model from OpenAI to help you break the ice, build rapport, and secure more in-person dates. The AI is designed to keep conversations engaging and respectful while suggesting timely meetups. A personality slider allows you to adjust the AI\'s energy between friendly, flirty, and frisky for a personalized experience.\n\nSimply tap the AI-generated message to instantly copy it, ready to be pasted into your preferred messaging or dating app. If you\'re looking for alternative suggestions, simply tap refresh to generate a new reply, ensuring that you always have the perfect response at your fingertips.',
                              size: 15,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
