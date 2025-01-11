import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails(
      {super.key,
      required this.doctorName,
      required this.specialityName,
      required this.doctorImage});
  final String doctorName;
  final String specialityName;
  final String doctorImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.bottomLeft, children: [
          Container(
            height: 85,
            width: 125,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: AppColors.buttonColor),
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(doctorImage),
          ),
        ]),
        Container(
          alignment: Alignment.center,
          height: 85,
          width: 187,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.themeColor,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(102, 128, 128, 128),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
                Text(
                  specialityName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(103, 114, 148, 1)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: index < 4 ? Colors.amber : Colors.grey[300],
                          size: 14,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 19,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
