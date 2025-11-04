import 'package:flutter/material.dart';

class MainPlay extends StatelessWidget {
  const MainPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Layout"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/image/photo.png"
            ),

            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 26
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All About Shizuku-chan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),

                      Text(
                        "Tokyo, Japan",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),

                      Text("41")
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.black,
                    ),

                    Text(
                      "Call",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18
                      ),
                    )
                  ],
                ),

                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),

                    Text(
                      "Person",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18
                      ),
                    )
                  ],
                ),

                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.black,
                    ),

                    Text(
                      "Share",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18
                      ),
                    )
                  ],
                )
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(
                vertical: 35,
                horizontal: 20
              ),

              child: Text(
                "Kotori-chan appears to be a feminine, caring, shy, and cheerful girl. "
                    "She is known for having her head in the clouds. Despite this, "
                    "she is μ's designer alongside Nico Yazawa, and is also clever "
                    "and good at studying, being a honor student. Kotori-chan has "
                    "a very huge aptitude for fashion and is very good at drawing "
                    "costumes for the group. Kotori-chan is shown to be very kind "
                    "and supportive to her friends and genuinely cares about them, "
                    "especially their feelings: she's easily the most altruistic "
                    "character in her group, and cares more how others feel than "
                    "how she does herself. However, this can go too far as Kotori-chan "
                    "usually backs Honoka-chan up when she is scolded by Umi-chan.\n\n"
              
                    "Kotori-chan is also shown as the most indecisive person among "
                    "all nine members and tends to have Sonoda Umi and Kousaka Honoka, "
                    "her childhood friends, make decisions for her. She also has a "
                    "hard time expressing her feelings, since she always takes other "
                    "people's feelings into consideration. Kotori-chan is a kind person, "
                    "but she can also be gullible, as shown in Season 1 Episode 10, "
                    "wherein Nico-chan claimed that she has a personal chef like Nishikino "
                    "Maki, and Kotori-chan fell for Nico-chan's lie unknowingly.\n\n"
              
                    "In Kotori-chan's Holiday (July 2012), it is revealed that while "
                    "naive, Kotori-chan is hard-working, and the type of person who "
                    "can't relax unless all the work is done as soon as possible.",
              
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
