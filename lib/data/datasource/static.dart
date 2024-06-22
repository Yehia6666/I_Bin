import "package:i_bin1/data/model/onboardingmodel.dart";
import "package:i_bin1/shared/componants/constant/imageasset.dart";

List<OnBoardingModel> onBoardingList =[
  OnBoardingModel(
    image: AppImageAsset.onBoardingImage1,
    title: 'Automated Garbage Separation',
    body: 'The intelligent bin enables you to monitor and separate garbage in a smart and automatic way without any efforts from you.',
  ),
  OnBoardingModel(
    image: AppImageAsset.onBoardingImage2,
    title: 'Request the truck',
    body: 'When the bin is full, it sends a notification to the application so you can order a special truck to take it from home without any fees.',
  ),
  OnBoardingModel(
    image: AppImageAsset.onBoardingImage3,
    title: 'Food donation',
    body: 'Donating remain food you have is a great way to support those in need. Consider shelters, or organizations or be a volunteer with us.',
  ),
  OnBoardingModel(
    image: AppImageAsset.onBoardingImage4,
    title: 'Earn money from waste',
    body: 'Collecting points to earn money, rank with your friends and neighbors, Get 1st place in leaderboard to get gifts and exchange points.',
  ),

];