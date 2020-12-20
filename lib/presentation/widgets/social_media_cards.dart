import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaCards extends StatelessWidget {
  const SocialMediaCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 100),
        SocialMediaCard(
          iconPath: 'assets/images/svg/facebook.svg',
          onTap: () {},
        ),
        SocialMediaCard(
          iconPath: 'assets/images/svg/buscar.svg',
          onTap: () {},
        ),
        SocialMediaCard(
          iconPath: 'assets/images/svg/apple.svg',
          onTap: () {},
        ),
      ],
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  final String iconPath;
  final Function onTap;
  const SocialMediaCard({
    Key key,
    @required this.iconPath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: 50,
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}
