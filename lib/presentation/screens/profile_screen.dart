import 'package:flutter/material.dart';

import '../widgets/review_modal.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {},
          ),
          title: const Text(
            "Рейтинг профиля",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF6E3ED3), Color(0xFF1D69DA)],
            ),
          ),
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Column(children: [
                    Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        //<-- SEE HERE
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.15),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Wrap(
                              spacing: 6.0, // gap between adjacent chips
                              runSpacing: 1.0, // gap between lines
                              children: <Widget>[
                                const Chip(
                                  backgroundColor: Color(0xFF2EA5E9),
                                  avatar: Text("💼"),
                                  label: Text('Компентентный сотрудник'),
                                ),
                                const Chip(
                                  backgroundColor: Color(0xFF0E9E19),
                                  avatar: Text("😜"),
                                  label: Text('Лучший друг'),
                                ),
                                const Chip(
                                  backgroundColor:
                                      Color.fromARGB(255, 197, 197, 197),
                                  avatar: Text("😊"),
                                  label: Text('Открытый'),
                                ),
                                const Chip(
                                  backgroundColor:
                                      Color.fromARGB(255, 197, 197, 197),
                                  avatar: Text("🐈"),
                                  label: Text('Зоошиза'),
                                ),
                                const Chip(
                                  backgroundColor:
                                      Color.fromARGB(255, 197, 197, 197),
                                  avatar: Text("🤢"),
                                  label: Text('Ест пиццу с ананасами '),
                                ),
                                const Chip(
                                  backgroundColor:
                                      Color.fromARGB(255, 197, 197, 197),
                                  avatar: Text("😡"),
                                  label: Text('Неадекватный веган'),
                                ),
                                const Chip(
                                  backgroundColor:
                                      Color.fromARGB(255, 197, 197, 197),
                                  avatar: Text("🎤"),
                                  label: Text('Красиво поёт'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.12),
                    child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: const [
                            Image(
                              image: AssetImage('assets/images/avatar.png'),
                            ),
                            Text(
                              "Антон Дегтярёв",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ))),
              ]),
              // Opacity(
              //   opacity: 0.5,
              //   child: Container(
              //     width: double.infinity,
              //     height: 40,
              //     color: Colors.grey,
              //   ),
              // ),
              Card(
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Отзывы",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => ReviewModal(),
                                isScrollControlled: true,
                                useRootNavigator: true,
                                backgroundColor: Colors.transparent,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              // padding:
                              //     EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              backgroundColor:
                                  Color.fromARGB(255, 196, 241, 198),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/reviewpen.png"),
                                  Text(
                                    "Оставить отзыв",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: const Color(0xFF0E9D16)
                                          .withOpacity(1),
                                    ),
                                  ),
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height *
                                    0.025)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Сортировка:",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 129, 128, 128))),
                            PopupMenuButton(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                position: PopupMenuPosition.under,
                                child: TextButton.icon(
                                  label: Text("самые недавние"),
                                  icon: Icon(Icons.arrow_downward),
                                  onPressed: () {},
                                ),
                                onSelected: (int? value) {},
                                itemBuilder: (BuildContext context) => [
                                      PopupMenuItem(
                                        value: 1,
                                        child: Text("сначала новые"),
                                      ),
                                      PopupMenuItem(
                                        value: 2,
                                        child: Text("сначала старые"),
                                      )
                                    ])
                          ],
                        )

                        /*BlocBuilder<ProfileBloc, ProfileState>(
                            builder: (context, state) {
                          if (state is ProfileInitial ||
                              state is ProfileReviewLoaded) {
                            Expanded(
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05),
                                      child: const ListTile(
                                        title: Text("Test"),
                                      ));
                                  // child: index == 0
                                  //     ? ReviewCard(
                                  //         name: "aa",
                                  //         rating: 5,
                                  //         reviewtext: "reviewtext",
                                  //         reviewDay: DateTime.now(),
                                  //         topreview: Colors.green)
                                  //     : ReviewCard(
                                  //         name: "name",
                                  //         rating: 4,
                                  //         reviewtext: "reviewtext",
                                  //         reviewDay: DateTime.now(),
                                  //         topreview: Colors.grey));
                                },
                                itemCount: 3,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                    height: 8,
                                  );
                                },
                              ),
                            );
                          }
                          return Container();
                        })*/
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
