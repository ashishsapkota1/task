import 'package:flutter/material.dart';
import 'package:task1/utils/spacing_utils.dart';
import 'package:task1/utils/theme.dart';

class EventsAndExperience extends StatelessWidget {
  final Image image;
  final String text1;
  final String text2;
  final String text3;

  const EventsAndExperience(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.38,
      width: width * 0.6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white70),
          boxShadow: const [
            BoxShadow(
                blurRadius: 4,
                color: Color(0xFFEBEDF0),
                spreadRadius: 1,
                offset: Offset(4, 3)),
            BoxShadow(
                blurRadius: 4,
                color: Color(0xFFEBEDF0),
                spreadRadius: 1,
                offset: Offset(-2, -2)),
          ]),
      child: Column(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(12), child: image),
          verticalSpacing(space: 12),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      color: AppColor.borderColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                verticalSpacing(space: 12),
                Text(
                  text2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                verticalSpacing(space: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text3,
                      style: TextStyle(color: AppColor.iconColor, fontSize: 16),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: AppColor.borderColor)),
                      child: Center(
                          child: Text(
                        'Book',
                        style: TextStyle(
                            color: AppColor.borderColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
