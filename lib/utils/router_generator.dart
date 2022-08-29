import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/home/comment_screen.dart';
import 'package:shopstantly_app/views/wallets/personal/personal_main_wallet_screen.dart';
import 'package:shopstantly_app/views/wallets/set_wallet_pin_screen.dart';
import 'package:shopstantly_app/views/wallets/wallet_pin_screen.dart';

import '../views/accounts/business/product_detail_screen.dart';
import '../views/accounts/others/post_detail_screen.dart';
import '../views/activity/activity_screen.dart';
import '../views/auth/login/login_screen.dart';
import '../views/auth/password/create_password_screen.dart';
import '../views/auth/password/forgot_password_screen.dart';
import '../views/auth/password/set_password_screen.dart';
import '../views/auth/register/otp_screen.dart';
import '../views/auth/register/register_screen.dart';
import '../views/base/page_switcher.dart';
import '../views/chats/chat_detail_screen.dart';
import '../views/events/event_detail_screen.dart';
import '../views/home/social_detail_screen.dart';
import '../views/logistics/logistic_screen.dart';
import '../views/logistics/logistic_verification_screen.dart';
import '../views/manage/commerce/commerce_main_screen.dart';
import '../views/post/blog_post_screen.dart';
import '../views/profile/add_photo_screen.dart';
import '../views/profile/choose_location_screen.dart';
import '../views/profile/profile_complete_screen.dart';
import '../views/profile/set_profile_screen.dart';
import '../views/thrift/thrift_detail_screen.dart';
import '../views/unboarding/choose_account_screen.dart';
import '../views/unboarding/landing_screen.dart';
import '../views/unboarding/onboarding_screen.dart';
import '../views/wallets/main_wallet_screen.dart';

Route<dynamic> generateRouter(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const OnboardingScreen();
          });
    case "/landing":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const LandingScreen();
          });
    case "/chooseAccount":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ChooseAccountScreen();
          });
    case "/login":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const LoginScreen();
          });
    case "/register":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const RegisterScreen();
          });
    case "/forgotPassword":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ForgotPasswordScreen();
          });
    case "/setNewPassword":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const SetPasswordScreen();
          });
    case "/createPassword":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const CreatePasswordScreen();
          });
    case "/verifyOtp":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const OtpScreen();
          });
    case "/commentScreen":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const CommentScreen();
          });
    case "/profileComplete":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ProfileCompleteScreen();
          });
    case "/setProfile":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const SetProfileScreen();
          });
    case "/addPhoto":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const AddPhotoScreen();
          });
    case "/chooseLocation":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ChooseLocationScreen();
          });
    case "/activity":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ActivityScreen();
          });
    case "/mainPage":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const PageSwitcher();
          });
    case "/productDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ProductDetailScreen();
          });
    case "/blogPost":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const BlogPostScreen();
          });
    case "/eventDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const EventDetailScreen();
          });
    case "/postDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const PostDetailScreen();
          });
    case "/thriftDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ThriftDetailScreen();
          });
    case "/chatDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const ChatDetailScreen();
          });
    case "/commerce":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const CommerceMainScreen();
          });
    case "/socialDetail":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const SocialDetailScreen();
          });
    case "/logistic-verfiy":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const LogisticVerificationScreen();
          });
    case "/logistic":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const LogisticScreen();
          });
    case "/setWalletPin":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const SetWalletPinScreen();
          });
    case "/walletPin":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const WalletPinScreen();
          });
    case "/personalWallet":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const PersonalMainWalletScreen();
          });
    case "/mainWallet":
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const MainWalletScreen();
          });
    default:
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return const OnboardingScreen();
          });
  }
}
