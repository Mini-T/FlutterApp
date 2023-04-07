import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.BgWhite,
        child: Column(
          children: [
            Spacer(),
            Component.header(
                "Te revoilà ! 🔥", 'Reviens vite pour profiter des bons plans'),
            Padding(padding: EdgeInsets.symmetric(vertical: 20),child: Material(
              color: Colors.transparent,
              child: Center(
                  child: Container(
                      width: 350,
                      child: Column(
                        children: [
                          Component.textFormField(_mailController, 'Email',
                              'Veuillez saisir votre email'),
                          Component.textFormField(
                              _passwordController,
                              'Mot de passe',
                              'Veuillez saisir votre mot de passe')
                        ],
                      ))),
            )),
            Container(
                width: 350,
                child: Text(
                  "Mot de passe oublié ?",
                  style: CustomTextStyles.FormSub(),
                  textAlign: TextAlign.right,
                )),
        Padding(padding: EdgeInsets.symmetric(vertical: 40),child: Component.bottomButton(
                'Se Connecter', context, '/home', 350)),
            Spacer(),
            Component.hyperLink(
                'Pas encore inscrit ?', 'Allez viens !', context, '/register')
          ],
        ));
  }
}
