import 'package:bkash_app_assaignment/core/app_colors.dart';
import 'package:bkash_app_assaignment/data/model/home_menu_item_model.dart';
import 'package:flutter/material.dart';

class MenuGridItem extends StatelessWidget {
  const MenuGridItem({super.key, required this.item});
  final HomeMenuItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.iconCircleBg,
              shape: BoxShape.circle,
            ),
            child: Icon(item.iconData, size: 28, color: item.iconColor),
          ),
          SizedBox(height: 8),
          Text(
            item.label,
            style: TextStyle(fontSize: 12, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}