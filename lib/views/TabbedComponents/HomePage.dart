import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';
import 'package:flutter_project/assets/fonts/typo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.LightPurple,
      child: Column(children: [
        Container(height: MediaQuery.of(context).size.height * 0.35, child:Column(
          children: [
            Spacer(),
            Center(
                child: SizedBox(
                    width: 350,
                    child: Row(
                      children: [
                        Component.header(
                            'Coucou toi,', 'T’es en manque de thunes ?',
                            colors: Colors.white, textAlign: TextAlign.left),
                      ],
                    ))),
            Spacer(),
            Material(
                child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            labelText: "Cherche un bon plan")))),
            Spacer(),
          ],
        )),

          Component.roundedLayout(context, [
            Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Component.BoxSubtitle('Courses', Color(0xFF605DF5),
                        Icons.shopping_bag_outlined),
                    Spacer(),
                    Component.BoxSubtitle(
                        'Sport', Color(0xFFF4696A), Icons.directions_run),
                    Spacer(),
                    Component.BoxSubtitle(
                        'Trains', Color(0xFF579BFE), Icons.train),
                    Spacer(),
                    Component.BoxSubtitle(
                        'Soirées', Color(0xFF7C8CF9), Icons.party_mode)
                  ],
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text("Les PLANS du moment",
                        style: CustomTextStyles.scrollTitle()),
                    Spacer(),
                    Text("Voir tout",
                        style: CustomTextStyles.scrollTitle(
                            color: Color(0xFFFC6B68),
                            fontWeight: FontWeight.w700))
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  children: [
                    Component.fitCardImage(
                        'Abonnement 1 an',
                        '2 mois offerts',
                        './lib/assets/images/grid-images/Big/Basic-fit.png',
                        './lib/assets/images/grid-images/logos/img-3.png'),
                    Spacer(),
                    Component.fitCardImage(
                        'Le grand barathon',
                        '1 verre acheté = 1 offert',
                        './lib/assets/images/grid-images/Big/Barathon.png',
                        './lib/assets/images/grid-images/logos/img.png'),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  children: [
                    Component.fitCardImage(
                        'Garantie Appart',
                        'Pas besoin de garants',
                        './lib/assets/images/grid-images/Big/Appart.png',
                        './lib/assets/images/grid-images/logos/img-1.png'),
                    Spacer(),
                    Component.fitCardImage(
                        'Giga MAXI Tacos',
                        '5€99, dépêche toi !',
                        './lib/assets/images/grid-images/Big/OTacos.png',
                        './lib/assets/images/grid-images/logos/img-2.png'),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  children: [
                    Component.fitCardImage(
                        'Abonnement 1 an',
                        '2 mois offerts',
                        './lib/assets/images/grid-images/Big/Basic-fit.png',
                        './lib/assets/images/grid-images/logos/img-3.png'),
                    Spacer(),
                    Component.fitCardImage(
                        'Giga MAXI Tacos',
                        '5€99, dépêche toi !',
                        './lib/assets/images/grid-images/Big/Barathon.png',
                        './lib/assets/images/grid-images/logos/img.png'),
                  ],
                )),
          
        ],)

      ]),
    );
  }

}