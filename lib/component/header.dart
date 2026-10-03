import 'package:flutter/material.dart';

class OverviewHeader extends StatelessWidget {
  const OverviewHeader({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final hasAction = (actionText?.isNotEmpty ?? false) && onActionTap != null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.menu, color: Colors.black87),
            const SizedBox(width: 4),
            Text(
              title,
              style: const TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ],
        ),
        if (hasAction)
          InkWell(
            onTap: onActionTap,
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                Text(
                  actionText!,
                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black87,
                ),
                const SizedBox(width: 4),
              ],
            ),
          ),
      ],
    );
  }
}