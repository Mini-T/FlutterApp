import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Components/Components.dart';

class PlanDescriptionForm extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Component.titledFormField('Titre', 'Abonnement 1 an Basic-Fit',
          _titleController, 'Met un titre pitié'),
      Component.titledFormField(
          'Description',
          "Ne soit pas trop bavard, on s'en fou, va à l'essentiel",
          _descController,
          'Met une description pitié', height: 119, expand: true),
      Component.titledFormField('Lien', 'www.lienverstonbonplan.com',
          _linkController, 'Met un lien pitié'),
      SizedBox(height: 32),
     ]);
  }

}