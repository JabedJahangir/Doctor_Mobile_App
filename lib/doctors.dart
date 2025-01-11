import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_mobile_app/Colors/colors.dart';
import 'package:doctor_mobile_app/Urls/image_assets.dart';
import 'package:doctor_mobile_app/Widgets/doctor_details.dart';
import 'package:doctor_mobile_app/Widgets/featured_doctor_details.dart';
import 'package:doctor_mobile_app/Widgets/featured_doctor_syntax.dart';
import 'package:doctor_mobile_app/Widgets/navigation_bar_item.dart';
import 'package:doctor_mobile_app/Widgets/search_box.dart';
import 'package:doctor_mobile_app/Widgets/tab_bar_list.dart';
import 'package:doctor_mobile_app/appointment_page.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  final List<String> doctorNames = const [
    'Dr. Pediatrician',
    'Dr. Mistry Brick',
    'Dr. Andrew',
    'Dr. Cole',
    'Dr. Maria',
    'Dr. Riya'
  ];

  final List<String> specialityNames = const [
    'Specialist  Cardiologist',
    'Specialist  Dentist',
    'Specialist  Dermatologists',
    'Specialist  Physiatrists',
    'Specialist  Neurologists',
    'Specialist  Pathologists',
  ];

  final List<String> doctorImages = const [
    AppImages.drPedi,
    AppImages.drMistry,
    AppImages.drAndrew,
    AppImages.drCole,
    AppImages.drMaria,
    AppImages.drRiya,
  ];

  final List<String> featuredDoctors = const [
    'Dr Crick',
    'Dr Lachinat',
    'Dr Strain',
    'Dr Maria',
  ];

  final List<String> workPeriod = const [
    '350 DH/ hours',
    '360 DH/ hours',
    '340 DH/ hours',
    '370 DH/ hours',
  ];

  final List<String> featuredDocImages = const [
    AppImages.drCrick,
    AppImages.drLachinat,
    AppImages.drStrain,
    AppImages.drMaria,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.themeColor,
          title: Text(
            'Doctors',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF333333),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 21, right: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SearchBox(),
              ),
              const SizedBox(
                height: 20,
              ),
              TabBarList(
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: doctorNames.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppointmentPage(
                              doctorInfo: DoctorDetails(
                                  doctorName: doctorNames[index],
                                  specialityName: specialityNames[index],
                                  doctorImage: doctorImages[index]),
                            ),
                          ),
                        ),
                        child: DoctorDetails(
                            doctorName: doctorNames[index],
                            specialityName: specialityNames[index],
                            doctorImage: doctorImages[index]),
                      );
                    },
                    options: CarouselOptions(
                        padEnds: false,
                        height: 350,
                        viewportFraction: 0.53,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false)),
              ),
              FeaturedDoctorSyntax(),
              const SizedBox(height: 10),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: featuredDoctors.length,
                    itemBuilder: (context, index) {
                      return FeaturedDoctorDetails(
                        featuredDoctor: featuredDoctors[index],
                        workingHour: workPeriod[index],
                        docImage: featuredDocImages[index],
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBarItem());
  }
}
