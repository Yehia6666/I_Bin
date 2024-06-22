import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_bin1/pages/provider_page/help_support/defualt_container_help_support.dart';
import 'package:i_bin1/pages/provider_page/help_support/defualt_help_support.dart';


class HelpSupportPageProvider extends StatefulWidget {
  const HelpSupportPageProvider({Key? key}) : super(key: key);

  static const String id = 'HelpSupportPageProvider';

  @override
  _HelpSupportPageProviderState createState() => _HelpSupportPageProviderState();
}

class _HelpSupportPageProviderState extends State<HelpSupportPageProvider> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text(
          'Help & Support',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.green,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w,vertical: 22.h),
          child: Column(
            children: [
              Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: DefaultHelp(
                        text: 'Technical issue',
                        isSelected: _selectedIndex == 0,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: DefaultHelp(
                        text: 'Questions',
                        isSelected: _selectedIndex == 1,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Expanded(
                      child: DefaultHelp(
                        text: 'Ideas',
                        isSelected: _selectedIndex == 2,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: DefaultHelp(
                        text: 'Other',
                        isSelected: _selectedIndex == 3,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                      ),
                    ),
                  ],
                ),],),
              SizedBox(height: 24.h),
             const DefaultContainerHelpSupport(
                name: 'Yehia Reda',
                id: '9867543',
                date: '24 Jan 2024',
                issue:
                'I faced a problem when I requested an order. I couldn\'t cancel the order despite how many times I clicked on the button.',
              ),
              SizedBox(height: 32.h),
              const DefaultContainerHelpSupport(
                name: 'Maram Mohamed',
                id: '9868787',
                date: '7 Feb 2024',
                issue:
                'I applied for a request to exchange the points that i have but i haven’t get it from the worker yet.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
