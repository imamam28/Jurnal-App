import 'package:flutter/material.dart';

import 'package:journal/const/app_color.dart';

class TextFormWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final void Function(String value)? onChanged;
  const TextFormWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.onChanged,
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
        padding: const EdgeInsets.only(right: 24),
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
            Expanded(
              child: TextField(
                textAlign: TextAlign.end,
                controller: controller,
                decoration: InputDecoration(
                  hintText: placeholder,
                  hintStyle: TextStyle(
                    color: AppColor.white.withOpacity(0.3),
                  ),
                  border: InputBorder.none,
                ),
                onChanged: onChanged,
                style: const TextStyle(
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
