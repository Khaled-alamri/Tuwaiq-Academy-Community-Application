import '../../../Packages/package.dart';

class CustomTextField extends StatelessWidget {
  // Here The Text Faild for Sign Up and Sgin in
  CustomTextField({
    this.onChanged,
    super.key,
    this.validaterMasseg,
    this.hintTextShow,
    this.labelTextShow,
    this.keyboardType,
    this.IconForText,
    this.controller,
  });
  final String? validaterMasseg;
  final String? hintTextShow;
  final String? labelTextShow;
  final TextInputType? keyboardType;
  final IconData? IconForText;
  final TextEditingController? controller;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validaterMasseg.toString();
        }
      },
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        prefixIcon: Icon(
          IconForText,
          color: primaryColor.withOpacity(0.4),
        ),
        hintText: hintTextShow.toString(),
        label: Text(
          labelTextShow!,
          style: TextStyle(
            color: primaryColor.withOpacity(0.4),
          ),
        ),
        filled: true,
        fillColor: Color.fromARGB(153, 255, 255, 255),
      ),
    );
  }
}

class CustomTextFieldWithBorder extends StatelessWidget {
  // Here The Text Faild for Sign Up and Sgin in
  CustomTextFieldWithBorder({
    this.onChanged,
    super.key,
    this.validaterMasseg,
    this.hintTextShow,
    this.labelTextShow,
    this.keyboardType,
    this.IconForText,
    this.controller,
    required this.borderColor,
  });
  final String? validaterMasseg;
  final String? hintTextShow;
  final String? labelTextShow;
  final TextInputType? keyboardType;
  final IconData? IconForText;
  final TextEditingController? controller;
  Function(String)? onChanged;
  Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validaterMasseg.toString();
        }
      },
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
        prefixIcon: Icon(
          IconForText,
          color: primaryColor.withOpacity(0.4),
        ),
        hintText: hintTextShow.toString(),
        label: Text(
          labelTextShow!,
          style: TextStyle(
            color: primaryColor.withOpacity(0.4),
          ),
        ),
        filled: true,
        fillColor: Color.fromARGB(153, 255, 255, 255),
      ),
    );
  }
}

class CustomTextFieldPost extends StatelessWidget {
  const CustomTextFieldPost(
      {super.key,
      //required this.validaterMasseg,
      required this.labelTextShow,
      this.IconForText,
      this.maxLength,
      this.Controller});
  //final String validaterMasseg;
  final String labelTextShow;
  final IconData? IconForText;
  final int? maxLength;
  final TextEditingController? Controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (String? value) {
      //   if (value!.isEmpty) {
      //     return validaterMasseg.toString();
      //   } add validator in text
      // },
      controller: Controller,
      decoration: InputDecoration(     
        prefixIcon: Icon(
          IconForText,
          color: HexColor("#7660A9"),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        hintText: 
          labelTextShow,
          hintStyle: TextStyle(
            color: primaryColor.withOpacity(0.5),  ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.3)
      ),
      maxLength: maxLength,
      maxLines: 5,
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({
    super.key,
    required this.hintTextShow,
    this.labelTextShow,
    this.keyboardType,
    this.IconForText,
    this.controller,
  });

  final String hintTextShow;
  final String? labelTextShow;
  final TextInputType? keyboardType;
  final IconData? IconForText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            IconForText,
            color: HexColor("#7660A9"),
          ),
          hintText: hintTextShow.toString(),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            
          ),
              enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
          filled: true,
          fillColor: Color.fromARGB(153, 255, 255, 255),
        ),
      ),
    );
  }
}
