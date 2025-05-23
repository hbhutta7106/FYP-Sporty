import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    this.icon,
    this.press,
    this. text,
  }) : super(key: key);

  final String? icon;
  final Function? press;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(12),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6F9),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon!),
          ),
          const SizedBox(height: 5), // Adjust the spacing between icon and text
          Text(
            text!,
            style: const TextStyle(fontSize: 12), // Adjust the text style
          ),
        ],
      ),
    );
  }
}
