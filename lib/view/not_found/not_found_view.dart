import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LocaleText(
        value: LocaleKeys.notFound,
      ),
    );
  }
}
