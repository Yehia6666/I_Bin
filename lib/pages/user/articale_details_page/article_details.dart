import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/user/articale_details_page/artical_desc_details.dart';
import 'package:i_bin1/shared/componants/constant/color.dart';
import 'package:i_bin1/shared/componants/defoualt_custom_button.dart';
import 'package:i_bin1/shared/componants/defoualt_image.dart';

class ArticleDetails extends StatelessWidget {
  const ArticleDetails({Key? key});

  static String id = 'ArticleDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back_ios_rounded,color: Colors.green,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Center(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all( 16.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.sp),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefoualtImage('assets/images/Featured_Article_Illistration_1.svg' ,
                      width: 150.w,
                      height: 168.h,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Why Segregation is important?',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    '24 Jan 2024',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontFamily: 'Readex',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                    const Spacer(
                      flex: 1,
                    ),
                  Text(
                    '>',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontFamily: 'Readex',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                 const Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Written by ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    'i-BIN Team',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12.sp,
                    ),
                  ),
                 const Spacer(
                    flex: 3,
                  ),
                  Text(
                    '756',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                 const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            ArticalDescDetails(
              title: 'The Importance of Waste Segregation',
              description: 'Waste segregation, the process of separating different types of waste, plays a crucial role in managing waste effectively, protecting the environment, and promoting sustainable living. Here’s why it’s so important:',            ),
            ArticalDescDetails(
              title: 'Reducing Landfill Waste',
              description: 'One of the most significant benefits of waste segregation is the reduction of landfill waste. Landfills are a major source of greenhouse gas emissions, contributing to climate change. By segregating waste, we can significantly reduce the amount of waste that ends up in landfills, thereby reducing our carbon footprint.',
            ),
            ArticalDescDetails(
              title: 'Improving Recycling Efficiency',
              description: 'Waste segregation also improves the efficiency of recycling processes. Different materials require different recycling methods, and separating these materials at the source makes the recycling process more effective. For example, paper can be recycled separately from plastic, leading to better quality recycled products.',
            ),
            ArticalDescDetails(
              title: 'Saving Resources',
              description: 'Recycling saves energy and resources. It takes less energy to recycle materials than to produce new ones. For example, recycling aluminum cans saves 95% of the energy needed to make new cans from raw materials. By segregating waste, we can ensure that more materials are recycled, leading to significant energy and resource savings.',
            ),
            ArticalDescDetails(
              title: 'Reducing Disposal Costs',
              description: 'Waste segregation can also help reduce waste disposal costs. By separating recyclable materials from general waste, we can reduce the volume of waste that needs to be disposed of in landfills or incinerators. This can lead to significant cost savings for businesses and municipalities.',
            ),
            ArticalDescDetails(
              title: 'Protecting the Environment',
              description: 'Waste segregation is a key part of environmental protection. By reducing landfill waste, improving recycling efficiency, and saving resources, we can help protect our environment for future generations.\n'
                  '\nIn conclusion, waste segregation is a simple yet powerful practice that can have a significant impact on our environment and society. By understanding its importance and practicing it in our daily lives, we can contribute to a more sustainable and healthier planet.',

            ),
            SizedBox(height: 20.h),
            DefualtCustomButton(
              function: (){

              },
              text: 'Back To Home',
              textSize: 16.sp,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}