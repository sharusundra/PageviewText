import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageviewtext_sharu/appdatatext.dart';

class DisplayText extends StatelessWidget {
  final AppDatatext appDatatext;
  const DisplayText({super.key, required this.appDatatext});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            height: 450,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  appDatatext.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
