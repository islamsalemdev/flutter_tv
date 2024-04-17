
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, required this.pageColor, required this.pageCount});
   final Color pageColor;
   final int pageCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(pageCount.toString()) ,),
      body:  Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: pageColor,
          ),
          child: Center(
            child: Text(pageCount.toString()),
          ),
        ),
      ),
    );
  }
}
