import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/language_cubit.dart';

Widget buildLanguageButton(
    BuildContext context, String languageCode, String label, String flagAsset) {
  return ElevatedButton(
    onPressed: () {
      context.read<LanguageCubit>().changeLanguage(languageCode);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue.shade600,
      padding: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            flagAsset,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8), // Space between flag and text
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
              maxLines: 2, // Allow up to 2 lines for wrapping
            ),
          ),
        ],
      ),
    ),
  );
}
