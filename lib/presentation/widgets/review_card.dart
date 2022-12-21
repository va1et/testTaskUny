import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReviewCard extends StatelessWidget {
  final String? name;
  final int? rating;
  final String? reviewtext;
  final DateTime? reviewDay;
  final Color? topreview;
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
        color: Theme.of(context).bottomAppBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
            constraints: BoxConstraints(
                minHeight: 75,
                maxWidth: MediaQuery.of(context).size.width * .8),
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 5, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name != null ? name! : " ",
                          // style: TextTheme.title.copyWith(
                          //   color: Theme.of(context).secondaryHeaderColor,
                          //   fontSize: 14,
                          // ),
                        ),
                        Text(
                            DateFormat('yyyy-MM-dd – kk:mm').format(reviewDay!))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Text(
                      reviewtext != null ? reviewtext! : " ",
                      // style: DarkTextTheme.title.copyWith(
                      //     color: Theme.of(context).secondaryHeaderColor,
                      //     fontWeight: FontWeight.w600,
                      //     fontSize: 15),
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ])));
  }
}
