import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/chips_bloc/chips_bloc.dart';
import 'package:flutter_application_1/presentation/widgets/profile_chips_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                              const Text("Рейтинг профиля",
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              IconButton(
                                  icon: SvgPicture.asset(
                                      'assets/icons/sharear.svg'),
                                  color: Colors.white,
                                  onPressed: () {})
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
                          padding: EdgeInsets.only(top: 0),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage('assets/images/rating.png'),
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
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
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
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Opacity(
                        opacity: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: Color(0xFFF2F2F2),
                        ),
                      )),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 16, right: 16),
                        child: Column(
                          children: [
                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Отзывы",
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF393939),
                                    ))),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                        height: 48),
                                    child: ElevatedButton(
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
                                          elevation: 0,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12))),
                                          backgroundColor: Color(0xFFE7F5E8),
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/reviewpen.png"),
                                              const Text("  Оставить отзыв",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF0E9D16),
                                                  )),
                                            ])))),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Сортировка:",
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFFBFBFBF))),
                                    Row(
                                      children: [
                                        const Text("Самые недавние",
                                            style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)),
                                        PopupMenuButton(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(8.0),
                                                bottomRight:
                                                    Radius.circular(8.0),
                                                topLeft: Radius.circular(8.0),
                                                topRight: Radius.circular(8.0),
                                              ),
                                            ),
                                            position: PopupMenuPosition.under,
                                            //child: TextButton.icon(
                                            //label: const Text("самые недавние"),
                                            icon: const Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                            // onPressed: () {},
                                            // ),
                                            onSelected: (int? value) {
                                              valuesort = value!;

                                              context
                                                  .read<ProfileBloc>()
                                                  .add(ProfileOpenEvent());
                                            },
                                            itemBuilder:
                                                (BuildContext context) => [
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
                                )),
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
