import 'dart:io';

import 'package:flutter/material.dart';

class ProfileChipsView extends StatefulWidget {
  const ProfileChipsView({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileChipsViewState createState() => _ProfileChipsViewState();
}

class _ProfileChipsViewState extends State<ProfileChipsView> {
  double _height = 150;
  int present = 7;

  void onClick() {
    if (_height == 31.0 * widgets.length) {
      setState(() {
        present = 7;
        _height = 150;
      });
    } else {
      setState(() {
        present = widgets.length;
        _height = 31.0 * widgets.length;
      });
    }
  }

  List<Widget> items = <Widget>[];
  static List<Widget> widgets = [
    Chip(
      backgroundColor: Color(0xFF2EA5E9),
      avatar: Text(
        "💼",
      ),
      labelPadding: const EdgeInsets.only(left: 1, right: 6),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Компентентный сотрудник  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white),
        ), //97D4F4
        TextSpan(
          text: ' 85 ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff97D4F4)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFF0E9E19),
      avatar: Text("😜"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Лучший друг ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white),
        ), //97D4F4     787878
        TextSpan(
          text: ' 29  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff86CF8C)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("😊"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Открытый ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 12  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("😡"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Неадекватный веган ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 2  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          )
        ]))),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("🎤"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Красиво поёт ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 4  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          ),
        ]))),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("😡"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Неадекватный веган ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 2  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          )
        ]))),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("🎤"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Красиво поёт ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 4  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          ),
        ]))),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("😡"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Неадекватный веган ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 2  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          )
        ]))),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("🎤"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Красиво поёт ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 4  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          ),
        ]))),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("😡"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Неадекватный веган ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 2  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          )
        ]))),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("🎤"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Красиво поёт ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 4  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          ),
        ]))),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("😡"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Неадекватный веган ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 2  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          )
        ]))),
    Chip(
        backgroundColor: Color(0xFFF0F0F0),
        avatar: Text("🎤"),
        labelPadding: EdgeInsets.only(left: 1),
        label: RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Красиво поёт ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black),
          ), //97D4F4     787878
          TextSpan(
            text: ' 4  ',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff787878)),
          ),
        ]))),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🐈"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Зоошиза ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 8  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
    Chip(
      backgroundColor: Color(0xFFF0F0F0),
      avatar: Text("🤢"),
      labelPadding: EdgeInsets.only(left: 1),
      label: RichText(
          text: const TextSpan(children: [
        TextSpan(
          text: 'Ест пиццу с ананасами ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ), //97D4F4     787878
        TextSpan(
          text: ' 1  ',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff787878)),
        )
      ])),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
        duration: const Duration(milliseconds: 330),
        // height: _height,
        // width: MediaQuery.of(context).size.width,
        // decoration: const BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(30),
        //     topRight: Radius.circular(30),
        //   ),
        // ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(children: [
                  Wrap(
                    runAlignment: WrapAlignment.start,
                    alignment: WrapAlignment.start,
                    spacing: 8,
                    // runSpacing: 0.1,
                    children: List.generate(present, (index) {
                      return widgets[index];
                    }),
                  ),

                  //   child: ListView.builder(
                  //       itemCount: (present <= widgets.length)
                  //           ? items.length + 1
                  //           : items.length,
                  //       itemBuilder: (context, index) {
                  //         return widgets[index];
                  //       }),
                  // ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 16, right: 16),
                    child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            width: MediaQuery.of(context).size.width * 0.92,
                            height: 38),
                        child: OutlinedButton(
                            onPressed: () {
                              onClick();
                            },
                            style: OutlinedButton.styleFrom(
                              // padding:
                              //     EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              shadowColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  present == 7
                                      ? RichText(
                                          text: TextSpan(children: [
                                          const TextSpan(
                                              text: "Показать ещё ",
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFD3D3D3),
                                              )),
                                          TextSpan(
                                              text:
                                                  '${widgets.length - present}',
                                              style: const TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFD3D3D3),
                                              ))
                                        ]))
                                      : const Text("Скрыть",
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFD3D3D3),
                                          )),
                                  present == 7
                                      ? const Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Color(0xFFC4C4C4),
                                        )
                                      : const Icon(
                                          Icons.keyboard_arrow_up_outlined,
                                          color: Color(0xFFC4C4C4),
                                        )
                                ]))),
                  )
                ]))));
  }
}
