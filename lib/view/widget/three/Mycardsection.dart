import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/view/widget/three/dotindecatore.dart';
import 'package:resposive/view/widget/three/mypageview.dart';

// ignore: camel_case_types
class mycardSection extends StatefulWidget {
  const mycardSection({super.key});

  @override
  State<mycardSection> createState() => _mycardSectionState();
}

// ignore: camel_case_types
class _mycardSectionState extends State<mycardSection> {
// ignore: camel_case_types
  int curenindex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      curenindex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          "My card",
          style: AppStyles.styleMedium20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 20,
        ),
        mycardPageview(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        Row(
          children: List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CustomDotIndicator(isActive: index == curenindex),
                  )),
        )
      ],
    );
  }
}
