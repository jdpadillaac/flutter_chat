import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/pages/login/widgets/login_form.dart';
import 'package:flutter_chat/presentation/utils/size_config.dart';
import 'package:flutter_chat/presentation/widgets/social_media_cards.dart';

class LoginPage extends StatelessWidget {
  static String routeName = 'login';
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(),
            SizedBox(height: 40),
            LoginForm(),
            SizedBox(height: 20),
            _buildRememberPasswordText(),
            SocialMediaCards()
          ],
        ),
      ),
    );
  }

  Text _buildTitle() {
    return Text(
      'Sign In',
      style: const TextStyle(
        fontSize: 40,
      ),
    );
  }

  InkWell _buildRememberPasswordText() {
    return InkWell(
      child: Text(
        '¡Olvidates tun contraseña?',
      ),
      onTap: () {},
    );
  }
}
