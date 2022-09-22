import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

const backgroundColor = Colors.white;
MaterialColor primarySwatch = generateMaterialColor(color: Color(0xffB79EBB));
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
        onPressed: () {
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
      onSaved: (s) {},
      keyboardType: textType,
      obscureText: isPassword,
      enabled: isClickable,
      validator: (s) {
        validate(s);
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
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

Widget horizontalCardsCreator() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Visibility(
          visible: true,
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(seconds: 1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://www.thehrdirector.com/wp-content/uploads/2017/10/Office-Building-Modern.jpg',
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Company 1',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  '',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  '',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                )),
          ),
        ],
      ),
      GestureDetector(
        child: Expanded(
          child: Container(
              alignment: Alignment.centerRight,
              child: const Icon(Icons.favorite)),
        ),
      )
    ],
  );
}

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
