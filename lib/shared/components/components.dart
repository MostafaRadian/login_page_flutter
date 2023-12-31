import 'package:flutter/Material.dart';

Widget DefaultButton({
  var function = print,
  Color color = Colors.indigoAccent,
  double width = 150,
  String text = "Sign in",
}) =>
    Container(
      width: width,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

// ignore: non_constant_identifier_names
Widget DefaultFormField(
  TextEditingController controller,
  TextInputType type,
  String? Function(String? value) validate,
  String label,
  Color color,
  Icon prefixIcon, {
  bool hidden = false,
  Function()? function,
  IconData? suffixIcon,
}) =>
    SizedBox(
      width: 300,
      child: TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: hidden,
          decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(),
              prefixIcon: prefixIcon,
              prefixIconColor: color,
              suffixIcon: IconButton(
                  onPressed: function, icon: Icon(suffixIcon ?? suffixIcon)),
              suffixIconColor: color),
          validator: validate),
    );
