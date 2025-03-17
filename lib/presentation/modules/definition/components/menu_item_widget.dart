import 'package:flutter/material.dart';

import '../../../config/theme/dimensions.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const MenuItemWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: Dimensions.actionBarIconSize),
        Dimensions.marginHorizontal_8,
        Text(text),
      ],
    );
  }
}
