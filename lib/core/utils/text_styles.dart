import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle textStyle18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle20(context) {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
}
