import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/fonts/typo.dart';

class EmbedPic extends StatelessWidget {
  bool addedImg = false;

  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.height * 0.5, child:Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 26),
          child: Text(
            "photo du bon plan",
            style: CustomTextStyles.scrollTitle(),
          ),
        ),
        Flexible(
            fit: FlexFit.loose,
            child: ElevatedButton(
                onPressed: () => addedImg = !addedImg,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    fixedSize: Size(174, 159),
                    backgroundColor: CustomColors.LightPurple),
                child: const Icon(Icons.add, color: Colors.white))),
      ],
    ));
  }
}
