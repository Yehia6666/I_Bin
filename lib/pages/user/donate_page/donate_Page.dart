import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/core/functions/validinput.dart';
import 'package:i_bin1/pages/user/home_user_page/home_user.dart';
import 'package:i_bin1/pages/user/notification_page/notifications_page.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/shared/componants/defoualt_linear_perecent.dart';
import 'package:i_bin1/shared/componants/defoult_custom_text_form_filed.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  static String id = 'DonatePage';

  @override
  _DonatePageState createState() => _DonatePageState();

}

class _DonatePageState extends State<DonatePage> {
  bool isSelectedFood = false;
  bool isSelectedClothes = false;
  bool isSelectedMoney = false;
  bool isSelectedBooks = false;


  bool isSelectedDonations = false;
  bool isSelectedPick = false;
  int _selectedIndex = 3;

  DateTime selectedDate = DateTime.now();
  final textOneCtr1 = TextEditingController();
  bool remindMe = false;
  // int _currentIndex = 3;
  double indicatorPerecent1 = 0.80;

  List<String> selectedTimes = [];
  Set<String> availableTimes = {'8:00 AM', '10:00 AM', '12:00 PM', '2:00 PM', '4:00 PM', '6:00 PM'};


  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickedDate != null && pickedDate != DateTime.now()) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Donate',
            style: TextStyle(
              color: AppColor.kTitleColor,
              fontSize: 20.sp,
              fontFamily: 'Readex',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading:  InkWell(
            onTap: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeUserPage()),
              );
            },
            child: Padding(
              padding:  EdgeInsets.only(left: 16.w),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 24.sp,
                  ),
                   Padding(
                    padding:  EdgeInsets.only(top: 1.h, left: 2.w , right: 2.w),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 23.sp,
                    ),
                  ),
                   Padding(
                    padding:  EdgeInsets.only(top: 8.h,left: 4.w, right: 4.w),
                    child: CircleAvatar(
                      radius: 16.sp,
                      backgroundImage:const AssetImage('assets/images/yehia.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, NotificationsPage.id);
                },
                child: DefoualtImage('assets/images/Notification_Icon.svg' ,
                  color: Colors.green,
                  height: 24.h,
                ),
              ),
            ),
          ],
          elevation: 1.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Donation Type ( Multiple Selection )',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 12.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.0.h),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedFood = !isSelectedFood;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0.sp),
                              side: BorderSide(
                                color: isSelectedFood ? Colors.green : Colors.white,
                                width: 2.0.w,
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: AppColor.kShadowColor,
                                blurRadius: 12.0.sp,
                                offset:const Offset(0, 0.90),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              DefoualtImage('assets/images/Food.svg',
                                width: 75.w,
                                height: 75.h,
                              ),
                              Text(
                                'Food',
                                style: TextStyle(
                                  color: AppColor.kTitleColor,
                                  fontSize: 14.sp,
                                  fontFamily: 'Readex',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                     SizedBox(width: 16.0.w),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedClothes = !isSelectedClothes;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0.sp),
                              side: BorderSide(
                                color: isSelectedClothes ? Colors.green : Colors.white,
                                width: 2.0.w,
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: AppColor.kShadowColor,
                                blurRadius: 12.0.sp,
                                offset:const Offset(0, 0.90),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Column(
                              children: [
                                DefoualtImage('assets/images/Clothes.svg',),
                                 Text(
                                  'Clothes',
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0.h),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedMoney= !isSelectedMoney;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0.sp),
                              side: BorderSide(
                                color: isSelectedMoney ? Colors.green : Colors.white,
                                width: 2.0.w,
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: AppColor.kShadowColor,
                                blurRadius: 12.0.sp,
                                offset: const Offset(0, 0.90),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Column(
                              children: [
                                DefoualtImage('assets/images/Money.svg',),
                                Text(
                                  'Money',
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0.w),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedBooks = !isSelectedBooks;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0.sp),
                              side: BorderSide(
                                color: isSelectedBooks ? Colors.green : Colors.white,
                                width: 2.0.w,
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: AppColor.kShadowColor,
                                blurRadius: 12.0.sp,
                                offset:const Offset(0, 0.90),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Column(
                              children: [
                                DefoualtImage('assets/images/Books.svg',),
                                 Text(
                                  'Books',
                                  style: TextStyle(
                                    color: AppColor.kTitleColor,
                                    fontSize: 14.sp,
                                    fontFamily: 'Readex',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0.h),

                 Text(
                  'Your Location',
                  style: TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.0.h),
                DefaultCustomTextFromField(
                  validator: (val){
                    return validInput(val!, 3, 15 , "city") ;
                  },
                  prefix:const Icon(Icons.location_on_outlined) ,
                  hint: 'Zagazig, Egypt',
                  controller: TextEditingController(text: 'Zagazig, Egypt'),
                ),
                 SizedBox(height: 16.0.h),
                 Text(
                  'Date and Time',
                  style:TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14.0.sp),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0.w, right:8.0.w),
                          child: TextFormField(
                            readOnly: true,
                            onTap: () => _selectDate(context),
                            decoration:const InputDecoration(
                              hintText: 'Select Date',
                              border: InputBorder.none,
                            ),
                            controller: TextEditingController(
                              text: '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => _selectDate(context),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Container(
                            child:const Icon(
                              Icons.calendar_today,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Column(
                  children: [
                     SizedBox(height: 8.0.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        ...availableTimes.take(3).map((time) {
                          bool isSelected = selectedTimes.contains(time);
                          return Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    selectedTimes.remove(time);
                                  } else {
                                    if (selectedTimes.length < 3) {
                                      selectedTimes.add(time);
                                    }
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0.sp),
                                margin: EdgeInsets.only(right: 8.w, top: 16.h),

                                decoration: BoxDecoration(
                                  border: Border.all(color: isSelected ? Colors.green : Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                child: Center(
                                  child: Text(
                                    time,
                                    style: TextStyle(
                                      color: isSelected ? Colors.green : AppColor.kTitleColor,
                                      fontSize: 12,
                                      fontFamily: 'Readex',
                                      fontWeight: FontWeight.w400,),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                    SizedBox(height: 8.0.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        ...availableTimes.skip(3).take(3).map((time) {
                          bool isSelected = selectedTimes.contains(time);
                          return Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    selectedTimes.remove(time);
                                  } else {
                                    if (selectedTimes.length < 3) {
                                      selectedTimes.add(time);
                                    }
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0.sp),
                                margin: EdgeInsets.only(right: 8.w, top: 8.h),
                                decoration: BoxDecoration(
                                  border: Border.all(color: isSelected ? Colors.green : Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text(
                                    time,
                                    style: TextStyle(
                                      color: isSelected ? Colors.green : AppColor.kTitleColor,
                                      fontSize: 12,
                                      fontFamily: 'Readex',
                                      fontWeight: FontWeight.w400,),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        ).toList(),
                      ],
                    ),
                  ],
                ),
                 SizedBox(height: 8.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: remindMe,
                      onChanged: (bool? value) {
                        setState(() {
                          remindMe = value!;
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      side:const BorderSide(color: Colors.green),
                    ),
                    Text(
                      'Remind me before you come',
                      style: TextStyle(
                        color: AppColor.kTitleColor,
                        fontSize: 12.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                 Text(
                  'Add Notes',
                  style:TextStyle(
                    color: AppColor.kTitleColor,
                    fontSize: 16.sp,
                    fontFamily: 'Readex',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                  SizedBox(height: 8.0.h),

                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.sp),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0.w,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.w,),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Readex',
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: 'Write anything you want to tell us.',
                      ),
                    ),
                  ),
                ),

                  SizedBox(height: 8.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text(
                      'The number of people who donated',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      (indicatorPerecent1*100).toInt().toString(),
                      style: TextStyle(
                        color: Color(0xFF03B04E),
                        fontSize: 14.sp,
                        fontFamily: 'Readex',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  child: DefoualtLinearPerecent(
                    height: 5.h,
                    indicatorPerecent1: indicatorPerecent1,
                    radius: 24.sp,
                    indicatorColor: Colors.green,
                  ),
                ),

                DefualtCustomButton(
                  function: (){},
                  text: 'Confirm Donation',
                  textSize: 14.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSquare({
    required String imageAsset,
    required String title,
    required String subtitle,
    required double imageSize,
  }) {
    return Container(
      width: (imageSize + 40.0).w,
      height: (imageSize + 80.0).h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.sp,
            blurRadius: 5.sp,
            offset:const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset, width: imageSize, height: imageSize, color: null),
            SizedBox(height: 8.0.h),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
            SizedBox(height: 8.0.h),
          Container(
            padding:  EdgeInsets.all(8.0.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0.sp),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Text(
              subtitle,
              style:const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
