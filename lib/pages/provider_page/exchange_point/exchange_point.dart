import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/exchange_point/contanier_exchange_point.dart';


class ExchangePointPage extends StatefulWidget {
  const ExchangePointPage({Key? key}) : super(key: key);
  static const String id = 'ExchangePointPage';

  @override
  State<ExchangePointPage> createState() => _ExchangePointPageState();
}

class _ExchangePointPageState extends State<ExchangePointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Exchange Point',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
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
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Padding(
                padding: EdgeInsets.only(left: 14.0.w, right: 14.0.w, top: 8.0.h, bottom: 16.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search with ID or request number',
                          hintStyle: TextStyle(
                              fontSize: 12.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0.sp),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 16.0.w),
                          prefixIcon: Icon(Icons.search, size: 32.sp),

                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  buildExchangePoint(
                    requestNumber: '101',
                    clientID: '9867543',
                    location: 'Zefta,Al-Gharbiah',
                    requestTime: '5 May 2024',
                    totalPoint: '415',
                    totalCach: '25,5 EGP',
                  ),
                  // const SizedBox(height: 10),
                  buildExchangePoint(
                    requestNumber: '102',
                    clientID: '9867544',
                    location: 'Zagazig,Al-Sharqia',
                    requestTime: '15 May 2024',
                    totalPoint: '415',
                    totalCach: '25,5 EGP',
                  ),
                ],
              ),
              // const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

