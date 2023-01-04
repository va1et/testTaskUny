import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/presentation/widgets/review_card.dart';

import '../../domain/models/User_review.dart';

class ProfileReviewsView extends StatefulWidget {
  const ProfileReviewsView(
      {Key? key, required this.reviews, required this.sortid})
      : super(key: key);
  final int sortid;
  final DataUserReviewValue reviews;
  // final ScheduleGroup schedule;

  @override
  // ignore: library_private_types_in_public_api
  _ProfileReviewsViewState createState() => _ProfileReviewsViewState();
}

class _ProfileReviewsViewState extends State<ProfileReviewsView> {
  @override
  void initState() {
    super.initState();
  }

  List<UserReview> _getSortedReviews(int sortid, DataUserReviewValue reviews) {
    List<UserReview> userreviews = reviews.reviews;
    if (sortid == 0) {
      userreviews.sort((a, b) {
        return DateTime.parse(b.updatedat)
            .compareTo(DateTime.parse(a.updatedat));
      });
    } else if (sortid == 1) {
      userreviews.sort((a, b) {
        return DateTime.parse(a.updatedat)
            .compareTo(DateTime.parse(b.updatedat));
      });
    } else if (sortid == 2) {
      userreviews.sort((a, b) {
        return b.name.toLowerCase().compareTo(a.name.toLowerCase());
        //softing on alphabetical order (Descending order by Name String)
      });
    }

    return userreviews;
  }

  Widget _buildPageViewContent(
      BuildContext context, DataUserReviewValue reviews, int sortid) {
    List<UserReview> userreviews = _getSortedReviews(sortid, reviews);
    // print(userreviews);
    return Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: userreviews.length,
            itemBuilder: (context, i) {
              return ReviewCard(
                name: userreviews[i].name,
                rating: 5,
                reviewDay: DateTime.parse(userreviews[i].updatedat),
                reviewtext: userreviews[i].text,
                topreview: i,
              );
            }));
  }

  @override
  Widget build(BuildContext context) {
    return _buildPageViewContent(context, widget.reviews, widget.sortid);
  }
}
