import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal/const/app_color.dart';

class SwitchFormWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool value;
  final void Function(bool)? onChanged;
  const SwitchFormWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white30),
        ),
      ),
      margin: const EdgeInsets.only(left: 24),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, bottom: 8),
        child: Row(
          children: [
            Icon(icon, color: AppColor.white),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(
                color: AppColor.white,
              ),
            ),
            const SizedBox(width: 12),
            const Spacer(),
            CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeColor: AppColor.accent,
            ),
          ],
        ),
      ),
    );
  }
}
