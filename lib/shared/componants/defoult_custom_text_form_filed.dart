import 'package:flutter/material.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';

class DefaultCustomTextFromField extends StatelessWidget {
  DefaultCustomTextFromField({
    this.width = double.infinity,
    this.controller,
     @required this.validator,
    this.prefix,
    this.suffix,
    this.onChange,
    this.onSubmit,
    this.type,
    this.hint,
    this.isObsecure = false ,
    this.prifixIconImage,
  });
  TextEditingController? controller ;
  @required TextInputType? type ;
  Function(String)? onSubmit ;
  dynamic onChange ;
  final String? Function(String?)? validator ;
  ImageIcon? prifixIconImage ;
  bool isObsecure ;
  @required String? hint ;
  @required Icon? prefix ;
  Icon? suffix ;
  double width  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      width: width,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        validator: validator ,
        obscureText: isObsecure ,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefix ,
          hintStyle:const TextStyle(
            fontSize: 14,
          ),
          suffixIcon: suffix ,
          focusColor: AppColor.kAppBarColorGreen,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide:const BorderSide(
              color: Colors.green,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          contentPadding:const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),

        ),

      ),
    );
  }
}


