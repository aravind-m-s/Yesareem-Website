import 'package:flutter/material.dart';
import 'package:yesareem_website/Constants/app_colors.dart';

class AppUtils {
  static inputDecoration({
    String? label,
    IconData? suffixIcon,
    bool? showCountryCode,
    bool? showPasswordPadlock,
  }) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(fontSize: 14),
      suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.greyColor),
      ),
      counterText: '',
    );
  }

  static showSnackbar(
      {required BuildContext context, required String message}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        showCloseIcon: true,
        closeIconColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static monthName(int month) {
    final Map<int, String> monthMap = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec",
    };
    return monthMap[month];
  }

  static defaultGradient() {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFF4B69E2),
        Color(0xFF1D2F82),
      ],
    );
  }

  static validEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }
}
