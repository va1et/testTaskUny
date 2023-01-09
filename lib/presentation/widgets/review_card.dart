import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReviewCard extends StatelessWidget {
  final String? name;
  final int? rating;
  final String? reviewtext;
  final DateTime? reviewDay;
  final int? topreview;
  ReviewCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.reviewtext,
    required this.reviewDay,
    required this.topreview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        // shadowColor: Colors.transparent,
        shadowColor: Theme.of(context).focusColor,
        //color: topreview,

        child: topreview == 0
            ? Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                        colors: [Color(0xFF0D9C13), Color(0xFF11B97C)])),
                constraints: BoxConstraints(
                    minHeight: 75,
                    maxWidth: MediaQuery.of(context).size.width * .9),
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 1, top: 1, left: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: name != null ? name! : " ",
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                const TextSpan(
                                    text: '  5 ',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.baseline,
                                    baseline: TextBaseline.alphabetic,
                                    child:
                                        Image.asset("assets/icons/star.png")),
                              ],
                            )),
                            Text(
                              DateFormat('dd.MM.yyyy').format(reviewDay!),
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 1, top: 1, left: 11),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .75,
                          child: Text(
                            reviewtext != null ? reviewtext! : " ",
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ]))
            : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFFF0F0F0),
                ),
                constraints: BoxConstraints(
                    minHeight: 75,
                    maxWidth: MediaQuery.of(context).size.width * .9),
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 1, top: 1, left: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: name != null ? name! : " ",
                                    style: const TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)),
                                const TextSpan(
                                  text: '  4 ',
                                  style: TextStyle(
                                    color: Color(0xFF29A32E),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17,
                                  ),
                                ),
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.baseline,
                                    baseline: TextBaseline.alphabetic,
                                    child: Image.asset("assets/icons/star.png",
                                        color: const Color(0xFF29A32E))),
                              ],
                            )),
                            Text(
                              DateFormat('dd.MM.yyyy').format(reviewDay!),
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'SF Pro Display',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 1, top: 1, left: 11),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .75,
                          child: Text(
                            reviewtext != null ? reviewtext! : " ",
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'SF Pro Display',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ])));
  }
}
