import 'package:flutter/material.dart';
import 'package:flutter_chat/presentation/constants/app_colors.dart';
import 'package:flutter_chat/presentation/widgets/default_button.dart';
import 'package:flutter_chat/presentation/widgets/form_errors.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> _errors = [];

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildEmail(),
          SizedBox(height: 20),
          _buildPassword(),
          SizedBox(height: 20),
          AppPrimaryButton(
            onTap: () {
              if (_formKey.currentState.validate() && _errors.length == 0) {
                _formKey.currentState.save();
              }
            },
            label: 'Ingresar',
          ),
          FormErrors(
            errors: _errors,
          )
        ],
      ),
    );
  }

  TextFormField _buildEmail() {
    const String emtyEmailError = 'El email es requerido';
    // const String invalidEmail = 'El email no es válido';
    const borderRadius = BorderRadius.all(
      Radius.circular(10),
    );

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email = value,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Email',
        hintStyle: TextStyle(color: AppColors.primary),
        prefixIcon: Icon(
          Icons.email,
          color: AppColors.primary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: AppColors.gray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppColors.gray,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !_errors.contains(emtyEmailError)) {
          setState(() {
            _errors.add(emtyEmailError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && _errors.contains(emtyEmailError)) {
          setState(() {
            _errors.remove(emtyEmailError);
          });
        }
      },
    );
  }

  TextFormField _buildPassword() {
    const String passwordRequired = 'La contraseña es requerida';

    const borderRadius = BorderRadius.all(
      Radius.circular(10),
    );

    return TextFormField(
      obscureText: true,
      onSaved: (value) => password = value,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Password',
        hintStyle: TextStyle(color: AppColors.primary),
        prefixIcon: Icon(
          Icons.lock,
          color: AppColors.primary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: AppColors.gray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppColors.gray,
          ),
        ),
      ),
      validator: (value) {
        if (value.isEmpty && !_errors.contains(passwordRequired)) {
          setState(() {
            _errors.add(passwordRequired);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && _errors.contains(passwordRequired)) {
          setState(() {
            _errors.remove(passwordRequired);
          });
        }
      },
    );
  }
}
