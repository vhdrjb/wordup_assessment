import 'package:assessment/presentation/config/theme/bloc/theme_bloc.dart';
import 'package:assessment/presentation/config/theme/dimensions.dart';
import 'package:assessment/presentation/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeToggleButton extends StatefulWidget {
  final bool isDarkMode;

  const ThemeToggleButton({
    super.key,
    required this.isDarkMode,
  });

  @override
  State<ThemeToggleButton> createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {

  late bool isDarkMode;

  @override
  void initState() {
    super.initState();
    isDarkMode = widget.isDarkMode;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        if (isDarkMode) {
          context.read<ThemeBloc>().add(ThemeEvent.switchToLightTheme());
        }else {
          context.read<ThemeBloc>().add(ThemeEvent.switchToDarkTheme());
        }
        setState(() {
          isDarkMode = !isDarkMode;

        });
        },
      child: Container(
        width: 80,
        height: 30,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.smallBorder),
          color: context.appColorScheme.focusedCardColor,
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: isDarkMode
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Container(
                width: 80 * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.smallBorder),
                  color: context.appColorScheme.selectedThemeColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ThemeOptionWidget(
                  icon: Icons.light_mode,
                  isSelected: !isDarkMode,
                ),
                _ThemeOptionWidget(
                  icon: Icons.dark_mode,
                  isSelected: isDarkMode,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ThemeOptionWidget extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const _ThemeOptionWidget({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color:
                isSelected
                    ? context.appColorScheme.buttonForegroundColor
                    : context.appColorScheme.textColor,
            size: 20,
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
