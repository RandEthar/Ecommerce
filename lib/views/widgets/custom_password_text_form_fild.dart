
import 'package:ecommerce_app/views/widgets/custom_text_form_fild.dart';
import 'package:flutter/material.dart';


class CustomPasswordTextFormFild extends StatefulWidget {
  const CustomPasswordTextFormFild({super.key, required this.controller,this.hint, this.validator});
 final TextEditingController controller;
 final String ?hint ;
 final String? Function(String?)?validator;
  @override
  State<CustomPasswordTextFormFild> createState() =>
      _CustomPasswordTextFormFildState();
}

class _CustomPasswordTextFormFildState
    extends State<CustomPasswordTextFormFild> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return  CustomTextFormFild(
       validator:widget.validator ,
      controller: widget.controller,
      onTape:(){
       setState(() {
          isObscure=!isObscure;
       });
      },
      obscureText: isObscure,
  hint: widget.hint?? "Password",

      prefixIcon: "assets/svgs/lock.svg",
      suffixIcon:  true,
    );
  }
}
