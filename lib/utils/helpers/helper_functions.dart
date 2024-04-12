import 'package:flutter/material.dart';
import 'package:get/get.dart';

sealed class AppHelperFunctions {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (ctx) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }

  static void navigatrToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    } else {
      return text;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    // return screenSize().height;
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    // return screenSize().width;
    return MediaQuery.of(Get.context!).size.width;
  }

  // Generate a wrapped list of widgets by grouping them into rows based on the given row size.
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(
        Row(children: rowChildren),
      );
    }
    return wrappedList;
  }

  static Color? getColor(String value) {
    switch (value) {
      case 'Green':
        return Colors.green;
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Yellow':
        return Colors.yellow;
      case 'Orange':
        return Colors.orange;
      case 'Purple':
        return Colors.purple;
      case 'Cyan':
        return Colors.cyan;
      case 'Teal':
        return Colors.teal;
      case 'Pink':
        return Colors.pink;
      case 'Lime':
        return Colors.lime;
      case 'Indigo':
        return Colors.indigo;
      case 'Brown':
        return Colors.brown;
      case 'Grey':
        return Colors.grey;
      case 'Amber':
        return Colors.amber;
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      default:
        return Colors.transparent;
    }
  }
}
