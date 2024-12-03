import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          icon: const Icon(Icons.mic),
          onPressed: () {},
        ),
        hintText: "Search...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Color(0xffFFCAE9),
          ),
        ),
      ),
    );
  }
}
