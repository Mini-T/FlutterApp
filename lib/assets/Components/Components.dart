import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:go_router/go_router.dart';

class Component {
  static Center buildGridImage(String Bimg, String Simg, String title,
      String subtitle,
      {Int}) {
    return Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                Bimg,
                height: 90,
                width: 144,
              ),
              Positioned(
                  top: 60,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      height: 106,
                      width: 106,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.5)),
                      child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Image(image: AssetImage(Simg))))),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(title, style: CustomTextStyles.ImageTitle())),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(subtitle, style: CustomTextStyles.ImageSubTitle())),
        ]));
  }

  static Center bottomButton(String text, Color colors, BuildContext context,
      String route, double width,
      {double height = 56}) {
    return Center(
        child: ElevatedButton(
          onPressed: () => context.go(route),
          style: ElevatedButton.styleFrom(
              fixedSize: Size(width, height),
              backgroundColor: colors,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          child: Text(text, style: CustomTextStyles.ButtonText()),
        ));
  }

  static Container scrollSteps() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
      width: 25,
      height: 5,
      decoration: const BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }

  static Column header(String title, String subtitle,
      {Color colors = CustomColors.DarkGrey,
        TextAlign textAlign = TextAlign.center}) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              heightFactor: 1,
              child: SizedBox(
                  width: 250,
                  child: Text(
                      textAlign: textAlign,
                      title.toUpperCase(),
                      style: TextStyle(
                        color: colors,
                        fontFamily: 'IntegralCf',
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                      )))),
          Center(
              heightFactor: 1,
              child: SizedBox(
                  width: 250,
                  child: Text(subtitle,
                      style: CustomTextStyles.LoginSubTitle(color: colors),
                      textAlign: textAlign)))
        ]);
  }

  static Container textFormField(TextEditingController controller,
      String placeholder, String validatorMessage) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return validatorMessage;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: placeholder,
          ),
        ));
  }

  static Center hyperLink(String partOne, String partTwo, BuildContext context,
      String route,
      {Color color = CustomColors.LessDarkGrey}) {
    return Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: RichText(
            text: TextSpan(
                text: partOne,
                style: CustomTextStyles.FormSub(),
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go(route),
                      text: partTwo,
                      style: TextStyle(color: Color(0xFF5F67EA)))
                ]),
          ),
        ));
  }

  static Column BoxSubtitle(String text, Color color, IconData icon) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(10),
          child: Container(
              width: 57,
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: color),
              child: Icon(
                icon,
                color: Colors.white,
              ))),
      Text(text, style: CustomTextStyles.BoxSub())
    ]);
  }

  static SizedBox fitCardImage(String title, String subtitle, String bigImg,
      String logo) {
    return SizedBox(
        height: 162,
        width: 159,
        child: Card(
            child: Center(
                child: Column(
                  children: [
                    Container(
                        width: 162,
                        height: 150,
                        child: Stack(
                          children: [
                            Container(
                              width: 144,
                              height: 90,
                              child: Image.asset(fit: BoxFit.fill, bigImg),
                            ),
                            Positioned(
                                bottom: 0,
                                top: 30,
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.white, width: 3)),
                                        child:
                                        Image.asset(logo, height: 20,
                                            width: 20)))),
                            Positioned(
                              top: 120,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Padding(
                                  padding:
                                  EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child:
                                  Text(title,
                                      style: CustomTextStyles.FormSub())),
                            ),
                            Positioned(
                                top: 135,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    child: Text(subtitle,
                                        style: CustomTextStyles
                                            .BiggerImgSub()))),
                          ],
                        )),
                  ],
                ))));
  }

  static Container bottomBarButton(BuildContext context,String route, IconData icon,
      {Color color = const Color(0xFFBCC0CC)}) {
    return Container(
        width: 49,
        height: 49,
        color: Color(0xFFF2F2F2),
        child: Center(
            child:
            ElevatedButton(
              style: ButtonStyle(elevation: MaterialStatePropertyAll(0),
                  fixedSize: MaterialStatePropertyAll(Size(49, 49)),
                  backgroundColor: MaterialStatePropertyAll(
                      Colors.transparent)),
              onPressed: () => context.go(route),
              child: Icon(
                icon,
                color: color,
              ),
            )));
  }

  static Container bottomBar(BuildContext context) {
    String? currentRoute = ModalRoute
        .of(context)
        ?.settings
        .name;
    List<Widget> barButtons = [];
    switch (currentRoute) {
      case '/home':
        {
          barButtons = [
            Component.bottomBarButton(
                context, '/home', Icons.home_filled, color: Color(0xFF5F67EA)),
            Spacer(),
            Component.bottomBarButton(context, '/add', Icons.add_circle),
            Spacer(),
            Component.bottomBarButton(context, '/profile', Icons.account_circle),
          ];
        }
        break;
      case '/add':
        {
          barButtons = [
            Component.bottomBarButton(
                context, '/home', Icons.home_filled),
            Spacer(),
            Component.bottomBarButton(context, '/add', Icons.add_circle, color: Color(0xFF5F67EA)),
            Spacer(),
            Component.bottomBarButton(context, '/profile', Icons.account_circle),
          ];
        }
        break;
      case '/profile':
        {
          barButtons = [
            Component.bottomBarButton(
                context, '/home', Icons.home_filled),
            Spacer(),
            Component.bottomBarButton(context, '/add', Icons.add_circle),
            Spacer(),
            Component.bottomBarButton(context, '/profile', Icons.account_circle, color: Color(0xFF5F67EA)),
          ];
        }
        break;
    }
    return Container(
      height: 80,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 35)],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25))),
      child: Center(
          child: Container(width: 177, child: Row(
            children: barButtons,
          ))
      ),
    );
  }
}
