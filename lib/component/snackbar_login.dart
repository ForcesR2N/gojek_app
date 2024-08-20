import 'package:flutter/material.dart';

class MySnackbar extends StatelessWidget {
  final String messageLogin;
  final String actionMessage;

  const MySnackbar({
    super.key,
    required this.messageLogin,
    required this.actionMessage,
  });

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(
        messageLogin,
        style: TextStyle(fontSize: 17),
      ),
      action: (actionMessage != null)
          ? SnackBarAction(
              label: messageLogin,
              onPressed: () {},
            )
          : null,
    );
  }
}
