import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';
import 'package:i_bin1/shared/componants/defoualt_linear_perecent.dart';

class RequestsStatisticsPage extends StatefulWidget {
  const RequestsStatisticsPage({super.key});
  static const String id = 'RequestsStatisticsPage';


  @override
  State<RequestsStatisticsPage> createState() => _RequestsStatisticsPageState();

}
class _RequestsStatisticsPageState extends State<RequestsStatisticsPage> {
  bool isSelectedWeak = false ;
  bool isSelectedMonth = false ;
  bool isSelectedYear = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Requests Statistics',
          textAlign: TextAlign.center,
          style:  Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.green,),
        ),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h),
          child: Column(
            children: [
              Row(
                children: [
                  DefoualtImage(
                    'assets/images/Calender_Icon.svg',
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Today',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                   Text(
                    '25 May 2024',
                    style:  Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h,),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          isSelectedWeak = !isSelectedWeak ;
                          isSelectedMonth = false ;
                          isSelectedYear = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3.0.w,
                              color: isSelectedWeak ? Colors.green : Colors.white,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h,),
                          child: Center(
                            child: Text('Week',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isSelectedWeak ? AppColor.kTitleColor : Colors.grey,
                                fontSize: 16.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isSelectedMonth = !isSelectedMonth ;
                          isSelectedWeak = false ;
                          isSelectedYear = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3.0.w,
                              color: isSelectedMonth ? Colors.green : Colors.white,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h,),
                          child: Center(
                            child: Text(
                              'Month',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isSelectedMonth ? AppColor.kTitleColor : Colors.grey,
                                fontSize: 16.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isSelectedYear = ! isSelectedYear ;
                          isSelectedWeak = false ;
                          isSelectedMonth = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3.0.w,
                              color: isSelectedYear ? Colors.green : Colors.white,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h,),
                          child: Center(
                            child: Text(
                              'Year',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isSelectedYear ? AppColor.kTitleColor : Colors.grey,
                                fontSize: 16.sp,
                                fontFamily: 'Readex',
                                fontWeight: FontWeight.w600,
                              ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Requests Details',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
        
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: double.infinity,
                decoration:ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.sp),
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
                  padding: EdgeInsets.all(16.sp),
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Organic Waste',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '40%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Weight',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '32 Kg',
                            style: Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.40,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'In-Organic Waste',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '30%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Weight',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '24 Kg',
                            style: Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.30,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Metal Waste',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '20%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Weight',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '8 Kg',
                            style: Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.20,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Other Waste',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '10%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Weight',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '2 Kg',
                            style: Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.10,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(
                height: 48.h,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Donations Details ',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
        
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: double.infinity,
                decoration:ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.sp),
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
                  padding: EdgeInsets.all(16.sp),
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Food',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '40%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.40,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Clothes',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '30%',
                            style: Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.30,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Money',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '20%',
                            style:Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.20,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
        
                      SizedBox(
                        height: 12.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Books',
                            style:Theme.of(context).textTheme.headline2,
                          ),
                         const Spacer(
                            flex: 1,
                          ),
                          Text(
                            '10%',
                            style:Theme.of(context).textTheme.headline2,
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      DefoualtLinearPerecent(
                        indicatorPerecent1: 0.10,
                        height: 5.h,
                        indicatorColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
