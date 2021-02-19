import 'package:blaja_app/widgets/custom_category_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                CustomCategoryContainer(
                  color: Color(0xFF2ACF2A),
                  img: 'assets/svgs/preschool.svg',
                  text: 'Pre-School',
                ),
                CustomCategoryContainer(
                  color: Color(0xFF0071EB),
                  img: 'assets/svgs/primary.svg',
                  text: 'Primary',
                ),
                CustomCategoryContainer(
                  color: Color(0xFFBB942A),
                  img: 'assets/svgs/secondary.svg',
                  text: 'Secondary',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                CustomCategoryContainer(
                  color: Color(0xFFBD47DF),
                  img: 'assets/svgs/college.svg',
                  text: 'College',
                ),
                CustomCategoryContainer(
                  color: Color(0xFF20C9BE),
                  img: 'assets/svgs/tuition.svg',
                  text: 'Tuition',
                ),
                CustomCategoryContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
