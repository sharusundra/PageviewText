import 'package:flutter/material.dart';
import 'package:pageviewtext_sharu/appdatatext.dart';
import 'package:pageviewtext_sharu/display_text.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Page View Text',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                height: 500,
                child: PageView.builder(
                    itemCount: appDatatext.length,
                    itemBuilder: (context, index) {
                      return DisplayText(appDatatext: appDatatext[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
