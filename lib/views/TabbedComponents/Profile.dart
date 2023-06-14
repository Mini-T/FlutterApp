import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final TextEditingController _pseudoController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.LightPurple,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(33),
              child: Row(children: [
                Component.header("MON PROFIL",
                    "Modifie tes infos affichées aux autres sur l’app",
                    colors: CustomColors.White, textAlign: TextAlign.start),
                Spacer(),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    height: 44,
                    width: 44,
                    child: Icon(Icons.add))
              ]),
            ),
            Component.roundedLayout(
              context,
              [
                Component.titledFormField("Mon pseudo", "pseudo", _pseudoController, "pseudo invalide"),
                Component.titledFormField("Addresse e-mail", "email", _mailController, "email invalide"),
                Component.titledFormField("Mot de passe", "mot de passe", _passwordController, "mot de passe invalide"),
                SizedBox(height: 200),
                Component.bottomButton("Enregistrer", context, '/', 313)
              ],
            )
          ],
        ));
  }
}
