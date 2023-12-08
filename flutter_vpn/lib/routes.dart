import 'package:flutter/material.dart';
import 'package:flutter_vpn/screens/%D0%A1ountries/countries_screen.dart';
import 'package:flutter_vpn/screens/Bio/bio_screen.dart';
import 'package:flutter_vpn/screens/HomePage.dart/home_screen.dart';
import 'package:flutter_vpn/screens/SignIn/SignIn.dart';
import 'package:flutter_vpn/screens/SignUp/signUp_screen.dart';
import 'package:flutter_vpn/screens/SplashPage/splash_screen.dart';
import 'package:flutter_vpn/screens/VIPScreen.dart/vip_screen.dart';
import 'package:flutter_vpn/service/firebase_streem.dart';

import 'package:go_router/go_router.dart';

// GoRouter configuration
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,   
          child: SplashPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/servers',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: CountriesPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/vip',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: VipScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/signin',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: SignIn(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
     GoRoute(
      path: '/bio',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: Bio(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
     GoRoute(
      path: '/signup',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: SignUp(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/fire_stream',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          
          child: FirebaseStream(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);