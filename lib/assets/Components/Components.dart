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

  static Center bottomButton(String text, BuildContext context, String route,
      double width,
      {double height = 56, Color colors = CustomColors.LightPurple}) {
    return Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(route);
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(width, height),
              backgroundColor: colors,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          child: Text(text, style: CustomTextStyles.ButtonText()),
        ));
  }

  static Container scrollSteps(
      {Color color = Colors.white38, double width = 25}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
      width: width,
      height: 5,
      decoration: BoxDecoration(
          color: color,
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
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: TextFormField(
          expands: true,
          minLines: null,
          maxLines: null,
          controller: controller,

          validator: (value) {
            if (value!.isEmpty) {
              return validatorMessage;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
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

  static Container fitCardImage(String title, String subtitle, String bigImg,
      String logo) {
    return Container(
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

  static Tab bottomBarButton(IconData icon) {
    return Tab(
        height: 80,
        icon: Container(
            width: 49,
            height: 49,
            color: const Color(0xFFF2F2F2),
            child: Center(
                child: Icon(
                  icon,
                  color: Color(0xFFBABFCD),
                ))));
  }

  static Container bottomBar(BuildContext context) {
    return Container(
        height: 80,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 35, spreadRadius: -10)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: Center(
            child: TabBar(padding: EdgeInsets.symmetric(horizontal: 75), tabs: [
              bottomBarButton(Icons.home_filled),
              bottomBarButton(Icons.add_circle),
              bottomBarButton(Icons.account_circle),
            ])));
  }

  static Container roundedLayout(List<Widget> content) {
    return Container(
        width: double.infinity,
        height: 600,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            color: Color(0xFFF7F7F7)),
        child: SingleChildScrollView(child: Column(children: content)));
  }

  static Container titledFormField(String title, String placeholder,
      TextEditingController controller, String validatorMessage, {double height = 52}) {
    return Container(margin:EdgeInsets.symmetric(vertical: 15), child: Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 7),
            child: Text(title,
                style: CustomTextStyles.scrollTitle(),
                textAlign: TextAlign.left)),
        Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 33),
            width: double.infinity,
            child: Component.textFormField(controller,
                placeholder, validatorMessage)),
      ],
    ));
  }
}
