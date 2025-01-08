import 'package:flutter/material.dart';

class WidgetComponent {
  static TextButton flatButton({
    required Widget buttons,
    Color? colors,
    required VoidCallback onPressed,
  }) =>
      TextButton(
        child: buttons,
        style: TextButton.styleFrom(
          foregroundColor: colors, // Sets the text color
        ),
        onPressed: onPressed,
      );

  static TextFormField formField({
    String? hints,
    String? label,
    Widget? suffix,
    Widget? prefix,
    InputBorder? borders,
    bool secure = false,
    bool autocorrent = true,
    Icon? icon,
    bool enables = true,
    TextInputType? inputType,
    TextEditingController? controllers,
    FormFieldValidator<String>? valids,
  }) =>
      TextFormField(
        enabled: enables,
        validator: valids,
        obscureText: secure,
        keyboardType: inputType,
        autocorrect: autocorrent,
        controller: controllers,
        decoration: InputDecoration(
          border: borders,
          icon: icon,
          labelText: label,
          hintText: hints,
          suffixIcon: suffix,
          prefixIcon: prefix,
        ),
      );

  static RawMaterialButton buttons(String label, {
    double? elevas,
    double? radius,
    Color? coloring,
    Color? textColor,
    FontWeight? bolds,
    EdgeInsetsGeometry? padding,
    required VoidCallback onPressed,
  }) =>
      RawMaterialButton(
        elevation: 5.0,  // Sets the shadow/elevation of the button
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 4.0)),
        fillColor: coloring,
        child: Text(
          label,
          style: TextStyle(color: textColor, fontWeight: bolds),
        ),
        onPressed: onPressed,
      );

  static ListTile listiles(String titles, {
    IconData? leads,
    IconData? icons,
    required VoidCallback onPressed,
  }) =>
      ListTile(
        leading: Icon(leads),
        title: Text(titles),
        onTap: onPressed,
        trailing: IconButton(icon: Icon(icons), onPressed: onPressed),
      );
}
