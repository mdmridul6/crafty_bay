import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_bar_circular_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/home_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            SearchInput(),
            SizedBox(height: 16),
            HomeSlider(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetsPath.appLogoNav),
      actions: [
        AppBarCircularButton(
          onTap: () {},
          iconData: Icons.person_outline_outlined,
        ),
        SizedBox(width: 8),
        AppBarCircularButton(onTap: () {}, iconData: Icons.phone_outlined),
        SizedBox(width: 8),
        AppBarCircularButton(
          onTap: () {},
          iconData: Icons.notifications_active_outlined,
        ),
      ],
    );
  }
}
