import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:flutter_project/views/TabbedComponents/AddPlan/EmbedPic.dart';
import 'package:flutter_project/views/TabbedComponents/AddPlan/PlanDescriptionForm.dart';

class AddPlan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddPlanState();
}

class AddPlanState extends State<AddPlan> {
  bool formSubmitted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.LightPurple,
        child: SizedBox(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 33),
              child: Row(children: [
                Container(
                    height: 187.428,
                    child: Component.header('Ajouter',
                        'Un bon plan pour en faire profiter les autres',
                        colors: Colors.white, textAlign: TextAlign.left)),
              ])),
          Component.roundedLayout(context, [
            Padding(
                padding: EdgeInsets.only(top: 27, bottom: 42),
                child: Row(children: [
                  Spacer(),
                  Component.scrollSteps(
                      color: formSubmitted ? Colors.grey : Color(0xFF5F67EA),
                      width: 46),
                  Component.scrollSteps(
                      color: formSubmitted ? Color(0xFF5F67EA) : Colors.grey,
                      width: 46),
                  Spacer(),
                ])),
            getFormSubmit(),
            Align(alignment: Alignment.bottomCenter,child: Center(
                child: ElevatedButton(
              onPressed: () {
                setState(() {
                  formSubmitted = !formSubmitted;
                });
                ;
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(313, 56),
                  backgroundColor: CustomColors.LightPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text(formSubmitted ? 'Ajouter ce bon plan' : 'Suivant',
                  style: CustomTextStyles.ButtonText()),
            )))
          ])
        ])));
  }

  Widget getFormSubmit() {
    if (!!formSubmitted) {
      return EmbedPic();
    } else {
      return PlanDescriptionForm();
    }
  }
}
