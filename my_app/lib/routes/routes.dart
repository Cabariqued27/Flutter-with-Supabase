import 'package:flutter/material.dart';
import 'package:my_app/ui/pages/exercise_description_pages.dart';
import 'package:my_app/ui/pages/feedback_page.dart';
import 'package:my_app/ui/pages/login_page.dart';
import 'package:my_app/ui/pages/reaction_page.dart';
import 'package:my_app/ui/pages/second_feedback_page.dart';
import 'package:my_app/ui/pages/sign_up_page.dart';


var customRoutes = <String, WidgetBuilder>{
  /// vistas de registro y login
  ExerciseDescriptionPage.id: (_) => const ExerciseDescriptionPage(),
  FeedBackPage.id: (_) => const FeedBackPage(),
  SecondFeedBackPage.id: (_) => const SecondFeedBackPage(),
  SocialPage.id: (_) => const SocialPage(),
  LoginPage.id: (_) => const LoginPage(),
  SignUpPage.id: (_) => const SignUpPage(),

  ///
};