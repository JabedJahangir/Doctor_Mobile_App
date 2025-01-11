import 'package:flutter/material.dart';

class FeaturedDoctorDetails extends StatelessWidget {
  const FeaturedDoctorDetails(
      {super.key,
      required this.featuredDoctor,
      required this.workingHour,
      required this.docImage});
  final String featuredDoctor;
  final String workingHour;
  final String docImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 130,
        width: 96,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(-3, 3),
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 15,
                    color: Colors.red,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      Text(
                        '3.7',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage(docImage),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                featuredDoctor,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                workingHour,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
