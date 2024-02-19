import 'package:flutter/material.dart';
import 'package:journal/const/app_color.dart';

class FormWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String placeholder;
  final String? value;
  final void Function() onTap;
  const FormWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.placeholder,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white30),
          ),
        ),
        margin: const EdgeInsets.only(left: 24),
        child: Padding(
          padding: const EdgeInsets.only(right: 24, bottom: 12),
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
              Text(
                value == null ? placeholder : value!,
                style: value == null
                    ? TextStyle(
                        color: AppColor.white.withOpacity(0.3),
                      )
                    : const TextStyle(color: AppColor.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
