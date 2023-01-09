import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/chips_bloc/chips_bloc.dart';
import 'package:flutter_application_1/presentation/widgets/profile_chips_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/profile_bloc/profile_bloc.dart';
import '../widgets/keyboard_positioned.dart';
import '../widgets/profile_reviews_view.dart';
import '../widgets/review_modal.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int valuesort = 0;
  List<String> strsort = ["сначала новые", "сначала старые", "по имени"];
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
        body: SafeArea(
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF6E3ED3), Color(0xFF1D69DA)],
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                color: Colors.white,
                                icon: const Icon(Icons.arrow_back_outlined),
                                onPressed: () {},
                              ),
                              const Text(
                                "Рейтинг профиля",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                color: Colors.white,
                                icon: const Icon(Icons.share_sharp),
                                onPressed: () {},
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.1),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage('assets/images/avatar.png'),
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.28),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Антон Дегтярёв",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          )),
                    ]),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       top: MediaQuery.of(context).size.height * 0.05),
                  //   child:
                  const ProfileChipsView(),
                  //)
                  //  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.4,
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    enableDrag: true,
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
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  backgroundColor:
                                      const Color.fromARGB(255, 196, 241, 198),
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
                                        0.01)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Сортировка:",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(
                                            255, 129, 128, 128))),
                                Row(
                                  children: [
                                    //   Text(strsort[valuesort]),
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
                                        //child: TextButton.icon(
                                        //label: const Text("самые недавние"),
                                        icon: const Icon(Icons.arrow_downward),
                                        // onPressed: () {},
                                        // ),
                                        onSelected: (int? value) {
                                          valuesort = value!;

                                          context
                                              .read<ProfileBloc>()
                                              .add(ProfileOpenEvent());
                                        },
                                        itemBuilder: (BuildContext context) => [
                                              PopupMenuItem(
                                                value: 0,
                                                child: Text(strsort[0]),
                                              ),
                                              PopupMenuItem(
                                                value: 1,
                                                child: Text(strsort[1]),
                                              ),
                                              PopupMenuItem(
                                                value: 2,
                                                child: Text(strsort[2]),
                                              )
                                            ])
                                  ],
                                )
                              ],
                            ),
                            BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, state) {
                              if (state is ProfileLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 5,
                                  ),
                                );
                              }
                              if (state is ProfileReviewLoaded) {
                                return ProfileReviewsView(
                                  reviews: state.reviews,
                                  sortid: valuesort,
                                );
                              }

                              if (state is ProfileLoadError) {
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      state.errorMessage,
                                    )
                                  ],
                                );
                              } else {
                                return Container();
                              }
                            })
                          ],
                        )),
                  )
                ]))));
  }
}
