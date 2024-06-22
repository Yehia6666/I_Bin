import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/user/creat_account_for_user.dart';
import 'package:i_bin1/shared/componants/constant.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  static String id = 'EditProfilePage';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController phoneNumberController = TextEditingController();

  String? emailForUser;

  String? passwordForUser;
  ImagePicker imagePicker = ImagePicker();
  XFile? imageProfile;
  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

 //  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: DefoualtImage(
                'assets/images/Exit X.svg',
                height: 16.h,
                width: 16.w,
              ),
            ),
          ),
        ),
        title: Text(
          'Edit Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.kTitleColor,
            fontSize: 20.sp,
            fontFamily: 'Readex',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(14.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      bottom: 40.h,
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 86.0.sp,
                          backgroundColor: Colors.green,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 4.w, bottom: 4.h),
                          child: CircleAvatar(
                            radius: 82.0.sp,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w, bottom: 8.h),
                          child: CircleAvatar(
                            radius: 78.0.sp,
                            backgroundImage: const AssetImage(
                              'assets/images/yehia.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 7.h,
                            right: 7.w,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16.sp,
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 10.h,
                            right: 9.w,
                          ),
                          child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 6.sp,
                              child: IconButton(
                                onPressed: () async {
                                  pickImageFromGallery() ;
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 10.sp,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                          color: AppColor.kTitleColor,
                          fontSize: 12.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    child: DefaultCustomTextFromField(
                      type: TextInputType.emailAddress,
                      onChange: (data) {
                        emailForUser = data;
                      },
                      validator: (val) {
                        return validInput(val!, 6, 50, "email");
                      },
                      hint: 'Yehia Reda',
                      prefix: const Icon(Icons.person_outline_rounded),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          color: AppColor.kTitleColor,
                          fontSize: 12.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    child: DefaultCustomTextFromField(
                      type: TextInputType.emailAddress,
                      onChange: (data) {
                        passwordForUser = data;
                      },
                      validator: (val) {
                        return validInput(val!, 6, 30, "password");
                      },
                      hint: 'Enter Your password',
                      prefix: const Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: AppColor.kTitleColor,
                          fontSize: 12.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          color: AppColor.kTitleColor,
                          fontSize: 12.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 56.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(14.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Flexible(
                            child: TextFormField(
                              controller: CreateAccountForUser.controller,
                              decoration: InputDecoration(
                                hintText: 'Cairo,Zagazig',
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                  size: 26.sp,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 160.w,
                                  height: 36.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(14.sp),
                                      border: Border.all(
                                        color: const Color(0xFF03B04E),
                                      )),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.my_location_outlined,
                                            color: const Color(0xFF03B04E),
                                            size: 16.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Text(
                                            'Use current location ',
                                            style: TextStyle(
                                              color: const Color(0xFF03B04E),
                                              fontSize: 10.sp,
                                              fontFamily: 'Readex',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'buttom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.sp),
                        gradient: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void showSnackBar(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(message),
  //     ),
  //   );
  // }



  Future<void> pickImageFromGallery() async {
    try {
  XFile? image = await imagePicker.pickImage(
    source: ImageSource.gallery,
  );
  if(image != null) {
    setState(() {
      imageProfile = image ;
    });
  } else {
    setState(() {
  imageProfile = imageProfile ;
});
  }
} catch (e) {
  print(e) ;
}
  }
}




//
//
// Stack(     // عملنا استاك علشان نعمل الصوره وعليها النقطه الخضره ونحط النقطه بالشكل ال هي فيه دا
// alignment: AlignmentDirectional.bottomEnd, //حطينا كل الاستاك في الاسفل من النهايه
// children: [
// CircleAvatar(
// radius: 86.0,
// backgroundColor: Colors.green,
// ),
// Padding(
// padding: const EdgeInsets.only(right: 3, bottom: 3),
// child: CircleAvatar(
// radius: 82.0,
// backgroundColor: Colors.white,
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 6, bottom: 6),
// child: CircleAvatar(
// radius: 78.0,
// backgroundImage: AssetImage (
// 'assets/images/yehia.png',
// ),
// ),
// ),
//
// Padding(
// padding: const EdgeInsets.only(bottom: 7,
// right: 7
// ),
// child: CircleAvatar(
// backgroundColor: Colors.white,
// radius: 16,
// child: Icon(Icons.camera_alt_outlined ,
// color: Colors.green,),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(bottom: 10, right: 9,
// ),
// child: CircleAvatar(
// backgroundColor: Colors.green,
// radius: 6,
// child: Icon(Icons.add, color: Colors.white,size: 10,)),
// )
//
// ],
// ),

