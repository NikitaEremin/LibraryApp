
import 'package:flutter/material.dart';
import 'package:study_application/Theme/appTheme.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String? errorText;
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/menu_screen');
    } else {
      errorText = 'Неверный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('Пароль сброшен');
  }

  final textStyle = const TextStyle(
    fontSize: 16,
    color: AppColors.mainDarkBlue,
    fontWeight: FontWeight.w600,
  );

  final textFieldDecoration = const InputDecoration(
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainLittleBlue, width: 2)),
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    isCollapsed: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Экран авторизации'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Имя пользователя',
              style: textStyle,
            ),
            TextField(
              controller: _loginTextController,
              decoration: textFieldDecoration,
              onChanged: (login) {
                setState(() {});
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Пароль',
              style: textStyle,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              controller: _passwordTextController,
              decoration: textFieldDecoration,
              obscureText: true,
              onChanged: (password) {
                setState(() {});
              },
            ),
            if (errorText != null)
              Text(
                '$errorText',
                style: const TextStyle(color: Colors.red),
              ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: (_loginTextController.text.length >= 3 &&
                          _passwordTextController.text.length >= 3)
                      ? _auth
                      : null,
                  style: Buttons.primaryButtons,
                  child: const Text(
                    'Войти',
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: _resetPassword,
                  style: Buttons.secondaryButtons,
                  child: const Text(
                    'Сбросить пароль',
                  ),
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                style: Buttons.secondaryButtons,
                child: Text('Зарегистироваться'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
