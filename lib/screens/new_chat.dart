import 'package:flutter/material.dart';

import 'generate_opener.dart';
import 'new_chat/inbox/chat_screen.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xFF3c5ceb),
              Color(0xFF3c5ceb),
              Color(0xFF54b4eb),
            ])),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 140,
              width: 140,
              child: Image.asset("images/log.PNG"),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 35,
              child: Image.asset("images/logo.PNG"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Less",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Hurmeregular',
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Screen",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'HurmeBold',
                      color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Time",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Hurmeregular',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "More",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Hurmeregular',
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Face",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'HurmeSemiBold',
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Time",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Hurmeregular',
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatsScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF000a80),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 30, child: Image.asset("images/btn.png")),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "New Chat",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'HurmeBold',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GenerateOpener()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 17),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF54b4eb),
                  ),
                  child: const Text(
                    "Generate Opener",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'HurmeBold',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
