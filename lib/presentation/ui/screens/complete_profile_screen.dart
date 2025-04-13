import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 36),
              AppLogoWidget(),
              SizedBox(height: 24),
              Text(
                "Complete your profile",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 8),
              Text(textAlign: TextAlign.center,
                "Get started with us by providing your information",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.black54,),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(hintText: "First name"),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 8),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: "Last name"),
              ),
              SizedBox(height: 8),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Mobile Number"),
              ),
              SizedBox(height: 8),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: "City"),
              ),
              SizedBox(height: 8),
              TextFormField(
                textInputAction: TextInputAction.next,
                maxLines: 4,
                decoration: InputDecoration(hintText: "Shipping Address"),
              ),
              SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: Text("Complete")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    super.dispose();
  }
}
