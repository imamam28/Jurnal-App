import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String placeholder;
  final String? value;
  final void Function() onTap;
  final Color color;
  final bool addPadding;
  final bool addDivider;
  const FormWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.placeholder,
    required this.value,
    required this.onTap,
    this.addPadding = true,
    this.addDivider = true,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: addDivider
                ? const BorderSide(color: Colors.white30)
                : BorderSide.none,
          ),
        ),
        margin: EdgeInsets.only(left: addPadding ? 24 : 0),
        child: Padding(
          padding: EdgeInsets.only(right: addPadding ? 24 : 0, bottom: 12),
          child: Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 12),
              Text(
                label,
                style: TextStyle(
                  color: color,
                ),
              ),
              const SizedBox(width: 12),
              const Spacer(),
              Text(
                value == null ? placeholder : value!,
                style: value == null
                    ? TextStyle(
                        color: color.withOpacity(0.3),
                      )
                    : TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
