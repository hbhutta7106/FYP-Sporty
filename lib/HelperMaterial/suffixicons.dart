import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcons extends StatelessWidget {
  const CustomSuffixIcons({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const  EdgeInsets.all(20.0),
        child: SvgPicture.asset(
          svgIcon,
          height: 16,
          width:16,

        )
    );
  }
}
