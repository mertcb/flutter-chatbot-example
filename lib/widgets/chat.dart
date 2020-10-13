import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

Widget chat(String message, int data) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Bubble(
        radius: Radius.circular(15.0),
        color: data == 0 ? Colors.lightGreen : Colors.blueGrey,
        elevation: 0.0,
        alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
        nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              avatar(data),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                  child: Text(
                message,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
            ],
          ),
        )),
  );
}

Widget avatar(int data) {
  return data == 0
      ? CircleAvatar(
          backgroundImage: AssetImage("assets/bot.png"),
        )
      : SizedBox(width: 0);
}
