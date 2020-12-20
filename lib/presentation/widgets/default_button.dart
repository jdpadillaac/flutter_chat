import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/constants/app_colors.dart';

class AppPrimaryButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final IconData prefixIcon;
  final IconData sufixIcon;
  const AppPrimaryButton({
    Key key,
    @required this.onTap,
    @required this.label,
    this.prefixIcon,
    this.sufixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      onPressed: onTap,
      color: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPrefixIcon(),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          _buildSufixIcon(),
        ],
      ),
    );
  }

  Row _buildPrefixIcon() {
    return Row(
      children: [
        Icon(
          prefixIcon,
          color: Colors.white,
        ),
        SizedBox(width: 10)
      ],
    );
  }

  Row _buildSufixIcon() {
    return Row(
      children: [
        Icon(
          sufixIcon,
          color: Colors.white,
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
