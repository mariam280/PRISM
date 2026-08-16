import 'package:flutter/material.dart';
import 'package:prism/core/utils/widgets/size.dart';
import 'package:prism/features/register/ui/screens/widgets/welcome_wordmark.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeWordmark(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WelcomeHeader(),
              const CustomSize(h: 40),
              AuthOptionButtons(
                onTapGoogle: () {},
                onTapEmail: () {},
              ),
              const CustomSize(h: 32),
              SignupPrompt(
                onTapCreateOne: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}