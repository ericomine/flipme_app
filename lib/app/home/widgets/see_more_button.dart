import 'package:flutter/material.dart';

import '../../shared/extensions/context_x.dart';

class SeeMoreButton extends StatelessWidget {
  final String title;
  final void Function()? onTapSeeMore;

  const SeeMoreButton({
    Key? key,
    this.title = "VER MAIS",
    required this.onTapSeeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSeeMore,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: context.themeData.primaryColor,
            ),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Text("VER MAIS",
            style: context.textTheme.bodyText2!.copyWith(
                color: context.themeData.primaryColor,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
