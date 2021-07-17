import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scard extends StatelessWidget {
  final Widget child;

  const Scard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          child: Row(children: [
            Padding(padding: const EdgeInsets.all(10.0), child: child)
          ]),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 2),
              ])),
      SizedBox(height: 15),
    ]);
  }
}
