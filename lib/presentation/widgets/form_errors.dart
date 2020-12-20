import 'package:flutter/material.dart';

class FormErrors extends StatelessWidget {
  final List<String> errors;
  const FormErrors({Key key, @required this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => _ErrorItem(
          error: errors[index],
        ),
      ),
    );
  }
}

class _ErrorItem extends StatelessWidget {
  final String error;
  const _ErrorItem({Key key, @required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.close, color: Colors.red),
          SizedBox(width: 10),
          Text(
            error,
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
