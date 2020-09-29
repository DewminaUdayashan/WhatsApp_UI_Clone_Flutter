import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/COLORS/Colors.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> imgPath = [
    'assets/acc/1.png',
    'assets/acc/2.png',
    'assets/acc/3.png',
    'assets/acc/4.png',
    'assets/acc/5.png',
    'assets/acc/6.png',
    'assets/acc/7.png',
  ];

  List<String> names = [
    'Nicola',
    'Cameron',
    'Abigail',
    'Amelia',
    'Thomas',
    'Alan',
    'Evan',
  ];

  List<String> msg = [
    'nice',
    'Lorem lipsum dolor sit',
    'great to hear..!',
    'ok I\'ll',
    'android apps',
    'flutter',
    'bye',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView.builder(
      itemCount: imgPath.length,
      itemBuilder: (context, index) {
        return chatCard(
            width: width,
            height: height,
            img: imgPath[index],
            message: msg[index],
            name: names[index],
            index: index);
      },
    );
  }

  Widget chatCard({
    width,
    height,
    img,
    name,
    message,
    index,
  }) {
    return Column(
      children: [
        Container(
          width: width,
          height: height * 0.14,
          child: Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.1,
                        width: width * 0.17,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(img),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            message,
                            style: TextStyle(
                              color: greyColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '8:00 PM',
                      style: TextStyle(
                        color: greenColor,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(100),
                        color: greenColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Text('$index'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 14),
          child: Divider(
            color: greyColor,
            height: 0.4,
            thickness: 0.2,
          ),
        )
      ],
    );
  }
}
