import 'dart:io';

import 'package:flirtify/utilites/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InboxScreen extends StatefulWidget {
  final String image;
  const InboxScreen({Key? key, required this.image}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  int current_index = 0;
  int _currentPage = 0;
  int _currentPage_1 = 0;
  final PageController _pageController = PageController();
  final PageController _pageController_1 = PageController();
  File? image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    }
    final tempImage = File(image.path);
    setState(() {
      this.image = tempImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(image: AssetImage('images/arrowBackword.png'))),
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  getImage();
                },
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff3c5ceb), width: 1),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      child: image != null
                          ? ClipOval(
                              child: Image.file(
                                image!,
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )
                          : ClipOval(
                              child: Image(image: AssetImage(widget.image))),
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              ReusableText(
                  title: 'Sarah',
                  fontFamily: 'HurmeSemiBold',
                  size: 20,
                  color: Color(
                    0xff3c5ceb,
                  ))
            ],
          ),
        ),
        backgroundColor: Color(0xffcad7ff),
        body: Column(
          children: [
            Expanded(
              child: Container(
                  child: Stack(
                children: [
                  Image(
                    image: AssetImage('images/aboveBackg.png'),
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
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
                                title: 'You and yor doghave the same energy',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(17),
                                          topRight: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: List.generate(3, (index) {
                                              return Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:
                                                        _currentPage_1 == index
                                                            ? Colors.blue
                                                            : Color(0xffcad7ff),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                          // Image(
                                          //   image:
                                          //       AssetImage('images/more.png'),
                                          //   height: 8,
                                          // ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'images/smsLogo.png'),
                                                height: 30,
                                              ),
                                              SizedBox(
                                                height: 35,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'images/refresh.png'),
                                                height: 20,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.65,
                                            child: PageView(
                                              controller: _pageController_1,
                                              onPageChanged: (int page) {
                                                setState(() {
                                                  _currentPage_1 = page;
                                                });
                                              },
                                              children: [
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Ha! I’ll take that as a compliment, dogs are amazing.What kind of dog do you have?'),
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                              ],
                                            ),
                                          ),
                                          // Expanded(
                                          //   child: Padding(
                                          //     padding: const EdgeInsets.only(
                                          //         top: 8.0),
                                          //     child: ReusableText(
                                          //         size: 16,
                                          //         title:
                                          //             'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                          //   ),
                                          // )
                                        ],
                                      )
                                    ],
                                  )),
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
                                    'My little friend is a Pekingese I love it!',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(17),
                                          topRight: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: List.generate(3, (index) {
                                              return Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: _currentPage == index
                                                        ? Colors.blue
                                                        : Color(0xffcad7ff),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                          // Image(
                                          //   image:
                                          //       AssetImage('images/more.png'),
                                          //   height: 8,
                                          // ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'images/smsLogo.png'),
                                                height: 30,
                                              ),
                                              SizedBox(
                                                height: 35,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'images/refresh.png'),
                                                height: 20,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.65,
                                            child: PageView(
                                              controller: _pageController,
                                              onPageChanged: (int page) {
                                                setState(() {
                                                  _currentPage = page;
                                                });
                                              },
                                              children: [
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Ha! I’ll take that as a compliment, dogs are amazing.What kind of dog do you have?'),
                                                ReusableText(
                                                    size: 16,
                                                    title:
                                                        'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                              ],
                                            ),
                                          ),
                                          // Expanded(
                                          //   child: Padding(
                                          //     padding: const EdgeInsets.only(
                                          //         top: 8.0),
                                          //     child: ReusableText(
                                          //         size: 16,
                                          //         title:
                                          //             'Awesome I have a Golden Retriever and I love it too! actually he is with his dog training instructor'),
                                          //   ),
                                          // )
                                        ],
                                      )
                                    ],
                                  )),
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
                                size: 18,
                                title:
                                    'Cool! that u take care of your little buddy',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      padding: EdgeInsetsDirectional.only(start: 10, end: 50),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 14, left: 10, right: 10, bottom: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage('images/takePic.png'),
                                  height: 5,
                                ),
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: 'Message...',
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 15),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.grey)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('images/forwordButton.png'),
                      height: 60,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      thickness: 5,
                      color: Colors.white,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            current_index = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: current_index == 0
                                    ? Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 26.0),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  Color(0xff9946a4),
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'images/robot icon - friendly ON.png'),
                                            height: 65,
                                          ),
                                        ],
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'images/robot icon - friendly OFF.png'),
                                          height: 50,
                                        ),
                                      )),
                            ReusableText(
                              title: 'friendly',
                              color: current_index == 0
                                  ? Color(0xff9946a4)
                                  : Colors.grey,
                              fontFamily: 'HurmeBold',
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            current_index = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: current_index == 1
                                    ? Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 26.0),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  Color(0xff9946a4),
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'images/robot icon - flirty ON.png'),
                                            height: 65,
                                          ),
                                        ],
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'images/robot icon - flirty OFF.png'),
                                          height: 50,
                                        ),
                                      )),
                            ReusableText(
                              title: 'flirty',
                              color: current_index == 1
                                  ? Color(0xff9946a4)
                                  : Colors.grey,
                              fontFamily: 'HurmeBold',
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            current_index = 2;
                          });
                        },
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: current_index == 2
                                    ? Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 26.0),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  Color(0xff9946a4),
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'images/robot icon - snarky ON.png'),
                                            height: 65,
                                          ),
                                        ],
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Image(
                                          image: AssetImage(
                                              'images/robot icon - snarky OFF.png'),
                                          height: 50,
                                        ),
                                      )),
                            ReusableText(
                              title: 'frisky',
                              fontFamily: 'HurmeBold',
                              color: current_index == 2
                                  ? Color(0xff9946a4)
                                  : Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
