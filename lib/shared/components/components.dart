import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';




const backgroundColor= Colors.white;
MaterialColor primarySwatch= generateMaterialColor(color: Color(0xffB79EBB));
const textColor = Colors.black;

//Color primarySwatch = HexColor('#B79EBB');
//Color accentColor = HexColor('#5AD3BC');
//const primarySwatch= Colors.black54;

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function submitFunction,
  required String text,
}) =>
    Container(
      width: width,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed:(){
          submitFunction();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );


Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType textType,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,

      keyboardType: textType,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: (s){
        onSubmit!(s);
      },
      onChanged: (s){
        onChange!(s);
      },
      onTap:(){
        onTap!();
    },
      validator:(s) {
        validate(s);
        return null;
      },
        decoration: InputDecoration(
        labelText: label,

        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed:(){
            suffixPressed!();
          },
            icon: Icon(
            suffix,
            ),

        )
            : null,
        border: const OutlineInputBorder(),
      ),
    );





















// Widget defaultFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   required VoidCallback onSubmit(String),
//   required VoidCallback onChange,
//   required Function onTap,
//   bool isPassword = false,
//   required Function validate,
//   required String label,
//   required IconData prefix,
//   IconData? suffix,
//   required Function suffixPressed,
//   bool isClickable = true,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: type,
//       obscureText: isPassword,
//       enabled: isClickable,
//       onFieldSubmitted: onSubmit,
//       onChanged: onChange,
//       onTap: onTap,
//       validator: validate,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(
//           prefix,
//         ),
//         suffixIcon: suffix != null
//             ? IconButton(
//           onPressed: suffixPressed,
//           icon: Icon(
//             suffix,
//           ),
//         )
//             : null,
//         border: OutlineInputBorder(),
//       ),
//     );