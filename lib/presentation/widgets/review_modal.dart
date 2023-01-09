import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';
import 'package:flutter_application_1/presentation/widgets/text_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../bloc/profile_bloc/profile_bloc.dart';
import 'keyboard_positioned.dart';

class ReviewModal extends StatefulWidget {
  ReviewModal({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ReviewModalState createState() => _ReviewModalState();
}

class _ReviewModalState extends State<ReviewModal> {
  final TextEditingController _textreview = TextEditingController();
  double _value = 8;
  static const List<Widget> widgets = [
    Chip(
      backgroundColor: Color(0xFF2EA5E9),
      avatar: Text("💼"),
      label: Text('Компентентный сотрудник'),
    ),
    Chip(
      backgroundColor: Color(0xFF0E9E19),
      avatar: Text("😜"),
      label: Text('Лучший друг'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😊"),
      label: Text('Открытый'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🐈"),
      label: Text('Зоошиза'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🐈"),
      label: Text('Зоошиза'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🐈"),
      label: Text('Зоошиза'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🤢"),
      label: Text('Ест пиццу с ананасами '),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("😡"),
      label: Text('Неадекватный веган'),
    ),
    Chip(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      avatar: Text("🎤"),
      label: Text('Красиво поёт'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.91,
        //expand: true,
        // snap: true,
        minChildSize: 0.91,
        maxChildSize: 1,
        builder: (_, controller) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  //height: MediaQuery.of(context).size.height * 0.91,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      color: Colors.white),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: Column(children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20, right: 10),
                            child: Stack(
                              children: [
                                const Align(
                                    alignment: Alignment.center,
                                    child: Text("Оставить отзыв",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))),
                                Positioned(
                                    left: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Отмена",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                    ))
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.005),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Image(
                                image: AssetImage('assets/images/avatar.png'),
                              ),
                            )),
                        const Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Антон Дегтярёв",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.005),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Оцените ваше общение",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: "${_value.toInt()}",
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const TextSpan(
                                      text: "/10",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ])),
                                ])),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.001),
                          child: SfSlider(
                              activeColor:
                                  const Color.fromARGB(255, 48, 225, 54),
                              min: 0,
                              max: 10,
                              interval: 1,
                              showTicks: false,
                              showLabels: false,
                              enableTooltip: false,
                              labelPlacement: LabelPlacement.onTicks,
                              showDividers: true,
                              stepSize: 1,
                              //minorTicksPerInterval: 1,
                              value: _value,
                              onChanged: (dynamic value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01),
                            child: TextInput(
                                placeholder: "Напишите отзыв",
                                keyboardType: TextInputType.emailAddress,
                                controller: _textreview,
                                obscureText: true,
                                label: "")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.01),
                              child: const Text(
                                "Короткая характеристика",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.01),
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints.tightFor(
                                        width: 300, height: 30),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          // padding:
                                          //     EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                          //shadowColor: Colors.transparent,

                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(80))),
                                          shadowColor: Colors.white,
                                          backgroundColor:
                                              Color.fromARGB(255, 229, 208, 247)
                                                  .withOpacity(1),
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                size: 16,
                                                Icons.add_circle,
                                                color: const Color(0xFF910AFB)
                                                    .withOpacity(1),
                                              ),
                                              Text(
                                                "Добавить свою характеристику",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: const Color(0xFF910AFB)
                                                      .withOpacity(1),
                                                ),
                                              ),
                                            ])),
                                  ))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01),
                            child: Column(children: [
                              Wrap(
                                spacing: 8,
                                children: List.generate(9, (index) {
                                  return widgets[index];
                                }),
                              )
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints.tightFor(
                                  width: double.infinity, height: 48),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // padding:
                                  //     EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  // shadowColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  backgroundColor: const Color(0xFF910AFB),
                                ),
                                onPressed: () {
                                  ///[ToDo] add reviews an then send to api??
                                  // context.read<ProfileBloc>().add(ProfileAddReviewEvent(
                                  //       review: UserReview(
                                  //           rating: _value.toInt(),
                                  //           reviewtext: _textreview.text,
                                  //           name: "Philipp"),
                                  //     ));
                                  Navigator.pop(context);
                                },
                                child: const FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "Опубликовать",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text:
                                      "Нажимая Опубликовать, Вы подтверждаете\n",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text:
                                      'согласие с условиями использования Uny',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // launchUrl(Uri.parse(
                                      //));
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ])))
            ])));
  }
}
