import 'package:flutter/cupertino.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_project/assets/Components/Components.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.LightPurple,
        child: Column(
          children: [
            const Spacer(),
            Center(
              heightFactor: 1,
              child: Text("PAS DE SOUS ?",
                  style: CustomTextStyles.bigTitle(
                      color: CustomColors.LightPurple)),
            ),
            const Center(
                heightFactor: 1,
                child: Text("Y’A PADSOU.",
                    style: TextStyle(
                        fontFamily: 'IntegralCf',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFC77A6),
                        fontSize: 30))),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Component.scrollSteps(),
                  Component.scrollSteps(),
                  Component.scrollSteps()
                ],
              )),
            ),
            Center(
              child: SizedBox(
                height: 300,
                width: 265,
                child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: GridView(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                          ),
                          children: [
                            Component.buildGridImage(
                                './lib/assets/images/grid-images/Big/Basic-fit.png',
                                './lib/assets/images/grid-images/logos/img-3.png',
                                'Abonnement 1 an',
                                "2 mois offerts"),
                            Component.buildGridImage(
                                './lib/assets/images/grid-images/Big/Barathon.png',
                                './lib/assets/images/grid-images/logos/img.png',
                                'Le grand barathon',
                                '1 verre acheté = 1 offert'),
                            Component.buildGridImage(
                                './lib/assets/images/grid-images/Big/Appart.png',
                                './lib/assets/images/grid-images/logos/img-1.png',
                                'Garantie appart',
                                'Pas besoin de garants'),
                            Component.buildGridImage(
                                './lib/assets/images/grid-images/Big/OTacos.png',
                                './lib/assets/images/grid-images/logos/img-2.png',
                                'Giga MAXI Tacos',
                                '5€99, dépêche toi !'),
                          ],
                        )),
              ),
            ),
            const Spacer(),
            Center(
                child: SizedBox(
                    width: 250,
                    child: Text(
                        "Accède aux 500 bons plans qu’on te propose chaque mois",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.BgText()))),
            const Spacer(),
            Component.bottomButton("C’est parti !", CustomColors.Pink, context, '/login', 261),
            const Spacer()
          ],
        ));
  }
}
