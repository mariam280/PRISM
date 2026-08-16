import 'package:flutter/material.dart';
import 'package:prism/core/theme/app_styles.dart';

Future<bool> showConfirmDialog({
  required BuildContext context,
  required VoidCallback onDelete,
}) async {
  return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Are you sure you want to delete this chat?!',
                  style: AppStyles.mediumInter14(context)),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      onDelete();
                    },
                    child: Text('Delete',
                        style: AppStyles.mediumInter14(context))),
              ],
            );
          }) ??
      false;
}
