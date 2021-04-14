import 'package:flutter/material.dart';

class WealthCard extends StatelessWidget {
  final Widget? content;

  const WealthCard({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(10),
      elevation: 2,
      child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.white),
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: content),
    );
  }
}
