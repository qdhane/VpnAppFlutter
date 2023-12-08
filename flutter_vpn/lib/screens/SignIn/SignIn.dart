import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vpn/kDefaultSet.dart';
import 'package:flutter_vpn/screens/SignUp/signUp_screen.dart';
import 'package:flutter_vpn/service/snack_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signUp() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    if (passwordTextInputController.text !=
        passwordTextRepeatInputController.text) {
      SnackBarService.showSnackBar(
        context,
        'Пароли должны совпадать',
        true,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'email-already-in-use') {
        SnackBarService.showSnackBar(
          context,
          'Такой Email уже используется, повторите попытку с использованием другого Email',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }

    context.push('/signup');
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
          'Регистрация',
          style: TextStyle(
              fontFamily: kDefFont,
              fontSize: kdefFontSizeMedium,
              color: kDefColorText,
              fontWeight: tbold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: formKey,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    controller: emailTextInputController,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Введите правильный Email'
                            : null,
                    obscureText: false,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kDefColorText, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Введите email',
                        hintStyle: TextStyle(color: kDefColorText),
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
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kDefColorText, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Пароль',
                        hintStyle: TextStyle(color: kDefColorText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        suffix: InkWell(
                          onTap: togglePasswordView,
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: kDefColorText,
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
                    controller: passwordTextRepeatInputController,
                    validator: (value) => value != null && value.length < 6
                        ? 'Минимум 6 символов'
                        : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kDefColorText, width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Повторите пароль',
                        hintStyle: TextStyle(color: kDefColorText),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        suffix: InkWell(
                          onTap: togglePasswordView,
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: kDefColorText,
                          ),
                        )),
                  ),
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
                          onPressed: signUp,
                          child: Text(
                            'Зарегистрироваться',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.push('/signup');
                      },
                      child: Text(
                        'Войти - ',
                        style: TextStyle(
                            fontFamily: kDefFont,
                            fontSize: kdefFontSizeSmall,
                            color: kDefColorText,
                            fontWeight: tbold),
                      ),
                    ),
                    Text(
                        ' если есть аккаунт',
                        style: TextStyle(
                            fontFamily: kDefFont,
                            fontSize: kdefFontSizeSmall,
                            color: kDefColorText,
                            fontWeight: tregular),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
