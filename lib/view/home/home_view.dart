import 'package:flutter/material.dart';

import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/home/widgets/logo_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    context.dynamicFem(20), context.dynamicFem(50), 0, 0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    logoTitleWrapper(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  LogoTitle logoTitleWrapper() {
    const Color titleColor = Color(0xff3f414e);
    const String logoPath = "logo-dJa";

    return const LogoTitle(logoPath: logoPath, titleColor: titleColor);
  }
}
