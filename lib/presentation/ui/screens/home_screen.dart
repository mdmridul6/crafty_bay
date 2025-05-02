import 'package:crafty_bay/presentation/ui/utils/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/widgets.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              SearchInput(),
              SizedBox(height: 16),
              HomeSlider(),
              SizedBox(height: 16),
              SectionHeader(sectionTitle: "Categories", onTap: () {}),
              _buildCategorySection(),
              _buildPopularSection(),
              _buildSpecialSection(),
              _buildNewSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularSection() {
    return Column(
      children: [
        SectionHeader(sectionTitle: "Popular", onTap: () {}),
        SizedBox(height: 190, child: _buildProductSection()),
      ],
    );
  }

  Widget _buildSpecialSection() {
    return Column(
      children: [
        SectionHeader(sectionTitle: "Special", onTap: () {}),
        SizedBox(height: 190, child: _buildProductSection()),
      ],
    );
  }

  Widget _buildNewSection() {
    return Column(
      children: [
        SectionHeader(sectionTitle: "New", onTap: () {}),
        SizedBox(height: 190, child: _buildProductSection()),
      ],
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
        SizedBox(width: 8),
      ],
    );
  }

  Widget _buildCategorySection() {
    return SizedBox(height: 130, child: HorizontalCategoryList());
  }

  Widget _buildProductSection() {
    return HorizontalProductList();
  }
}
