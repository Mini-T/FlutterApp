import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Services/AuthService.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _submitForm() {
    // Récupérer les valeurs des champs de saisie
    final email = _emailController.text;
    final password = _passwordController.text;

    // Envoyer les données à un serveur ou une base de données
    // ...

    // Afficher une boîte de dialogue de confirmation
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Formulaire soumis avec succès'),
          content: Text('Nom : $email\nEmail : $password'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                // Fermer la boîte de dialogue
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.BgWhite,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Spacer(),
        Component.header("Bienvenue 😎",
            "Inscris-toi pour avoir les meilleurs plans étudiants !"),
        Center(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
                child: Material(
                    color: Colors.transparent,
                    child: Center(
                        child: Container(
                            width: 360,
                            child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Component.textFormField(
                                      _emailController,
                                      'Adresse email',
                                      'Veuillez saisir votre email'),
                                  Component.textFormField(
                                      _passwordController,
                                      'Mot de passe',
                                      'Veuillez saisir votre mot de passe'),
                                  Component.textFormField(
                                      _confirmPasswordController,
                                      'Confirmation du Mot de passe',
                                      'Veuillez confirmer votre mot de passe'),
                                ])))))),
        Center(
            child: Container(
                width: 327,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Text(
                    "En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                    style: CustomTextStyles.FormSub(
                        color: CustomColors.LessDarkGrey)))),
        Center(child:
            ElevatedButton(
              onPressed: () async {
                final message = await AuthService().registration(email: _emailController.text, password: _passwordController.text);
                if (message!.contains('Success')) {
                  context.go('/login');
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(333, 80),
                  backgroundColor: CustomColors.LightPurple,
                  shape:
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text("Se connecter", style: CustomTextStyles.ButtonText()),
            )),
        Spacer(),
    Component.hyperLink('Déjà un compte ?', 'Connecte toi !', context, '/login')
    ],
    )
    );
  }
}
