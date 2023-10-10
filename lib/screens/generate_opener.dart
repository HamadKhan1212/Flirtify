import 'package:flirtify/utilites/reusable_text.dart';
import 'package:flutter/material.dart';

class GenerateOpener extends StatefulWidget {
  const GenerateOpener({Key? key}) : super(key: key);

  @override
  State<GenerateOpener> createState() => _GenerateOpenerState();
}

class _GenerateOpenerState extends State<GenerateOpener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/arrowBackword.png'),
                    height: 40,
                  ),
                  ReusableText(
                    title: 'Chats',
                    fontFamily: 'HurmeSemiBold',
                    color: Color(0xff3c5ceb),
                    size: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            ReusableText(
              title: 'Generate Opener',
              size: 22,
              fontFamily: 'HurmeBold',
              color: Color(0xff113695),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffcad7ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: ReusableText(
                          title: 'From boca',
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(
                                0xff113694,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17),
                                  topRight: Radius.circular(17),
                                  bottomLeft: Radius.circular(17))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ReusableText(
                            size: 17,
                            title:
                                'Boca local, huh? Any hidden gems you’d recommend exploring?',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(20),
                        child: ReusableText(
                          title: 'Like her artwork',
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(
                                0xff113694,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17),
                                  topRight: Radius.circular(17),
                                  bottomLeft: Radius.circular(17))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ReusableText(
                            size: 17,
                            title:
                                'Your artwork caught my eye!What’s the inspiration behind your creations?',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(
                                0xff113694,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17),
                                  topRight: Radius.circular(17),
                                  bottomLeft: Radius.circular(17))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ReusableText(
                            size: 17,
                            title:
                                'Your artwork caught my eye!What’s the inspiration behind your creations?',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(
                                0xff113694,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17),
                                  topRight: Radius.circular(17),
                                  bottomLeft: Radius.circular(17))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ReusableText(
                            size: 17,
                            title:
                                'Your artwork caught my eye!What’s the inspiration behind your creations?',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(
                                0xff113694,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17),
                                  topRight: Radius.circular(17),
                                  bottomLeft: Radius.circular(17))),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ReusableText(
                            size: 17,
                            title:
                                'Your artwork caught my eye!What’s the inspiration behind your creations?',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(vertical: 15),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Provide Context (Optional)',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Color(0xff53b4ea),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: ReusableText(
                            title: 'Generate',
                            color: Colors.white,
                            fontFamily: 'HurmeBold'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
