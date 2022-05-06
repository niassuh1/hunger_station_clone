import 'package:flutter/material.dart';

class HungTextField extends StatelessWidget {
  const HungTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        prefixIconColor: Theme.of(context).colorScheme.primary,
        prefixIcon: Icon(Icons.search_rounded),
        prefixIconConstraints: BoxConstraints(maxHeight: 40, minWidth: 40),
        hintText: 'Search for an item',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black12,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary, width: 4),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary, width: 4),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
