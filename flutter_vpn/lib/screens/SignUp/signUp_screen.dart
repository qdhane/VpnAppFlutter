import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:flutter_vpn/service/firebase_streem.dart';
import 'package:flutter_vpn/service/snack_bar.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    context.push('/fire_stream');
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        SnackBarService.showSnackBar(
          context,
          'Неправильный email или пароль. Повторите попытку',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefBackground,
      appBar: AppBar(
        backgroundColor: kDefBackground,
        leading: IconButton(
            onPressed: () {
              context.push('/home');
            },
            padding: EdgeInsets.only(left: kdefPadding),
            icon: Icon(
              Icons.keyboard_arrow_left_outlined,
              color: kDefColorIcon,
              size: 40,
            )),
        title: Text(
          'Вход',
          style: TextStyle(
              fontFamily: kDefFont,
              fontSize: kdefFontSizeMedium,
              color: kDefColorText,
              fontWeight: tbold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    'TGVPN',
                    style: TextStyle(
                        fontFamily: kDefFont,
                        fontSize: 60,
                        fontWeight: tbold,
                        color: kDefColorText),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        autocorrect: false,
                        controller: emailTextInputController,
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? 'Введите правильный Email'
                                : null,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: 'Логин',
                            hintStyle: TextStyle(color: kDefColorText),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: kDefColorText, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                color: kDefColorIcon,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        autocorrect: false,
                        controller: passwordTextInputController,
                        validator: (value) => value != null && value.length < 6
                            ? 'Минимум 6 символов'
                            : null,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                            hintText: 'Пароль',
                            hintStyle: TextStyle(color: kDefColorText),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: kDefColorText, width: 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            suffix: InkWell(
                              onTap: togglePasswordView,
                              child: Icon(
                                isHiddenPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: kDefColorIcon,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 370,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kDefColor1,
                      ),
                      child: TextButton(
                        onPressed: login,
                        child: Text(
                          'Войти',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
