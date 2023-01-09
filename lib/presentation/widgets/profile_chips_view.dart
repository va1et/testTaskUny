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
  int present = 8;

  void onClick() {
    if (_height == 31.0 * widgets.length) {
      setState(() {
        present = 8;
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
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(children: [
                  Wrap(
                    spacing: 8,
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
                    padding: const EdgeInsets.only(left: 20, right: 20),
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
                              present == 8
                                  ? const Text(
                                      "Показать ещё",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xFFD3D3D3),
                                      ),
                                    )
                                  : const Text("Скрыть",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xFFD3D3D3),
                                      )),
                              present == 8
                                  ? const Icon(
                                      Icons.arrow_drop_down_sharp,
                                      color: Color(0xFFC4C4C4),
                                    )
                                  : const Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: Color(0xFFC4C4C4),
                                    )
                            ])),
                  )
                ]))));
  }
}
