import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            onPageChanged: (index, _) {
              _selectedIndex.value = index;
            },
          ),
          items:
              [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: AppColors.themeColor),
                      child: Center(
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
        ),
        SizedBox(height: 8),
        ValueListenableBuilder(
          valueListenable: _selectedIndex,
          builder: (context, currentIndex, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 12,
                    width: 12,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: currentIndex == i ? AppColors.themeColor : null,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
