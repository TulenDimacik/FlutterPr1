import 'package:practica2/data/repositories/auth_repositories_impl.dart';
import 'package:practica2/domain/usecase/auth.dart';
import 'package:practica2/presentation/widgets/custom_button.dart';
import 'package:practica2/presentation/widgets/text_field_obscure.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}




class _RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> _key = GlobalKey();

  TextEditingController _surnameController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _patronymicController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 50,
                      fontWeight: FontWeight.w800),
                ),
                const Spacer(),
                TextFormField(
                  maxLength: 25,
                  controller: _surnameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Фамилия не может быть пустой';
                    }
                    if (value.length < 2) {
                      return 'Слишком короткая фамилия';
                    }
                    if(isValidDigit(value))
                    {
                      return 'Фамилия не может содержать цифры!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Фамилия',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 25,
                  controller: _userNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле имени пустое';
                    }
                    if (value.length < 2) {
                      return 'Слишком короткое имя';
                    }
                    if(isValidDigit(value))
                    {
                      return 'Имя не может содержать цифры!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Имя',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 25,
                  controller: _patronymicController,
                  validator: (value) {
                    if (value!.isNotEmpty && isValidDigit(value)) {
                        return 'Отчество не может содержать цифры!';
                    }
                    if (value.isNotEmpty && value.length<2) {
                        return 'Отчество слишком короткое!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Отчество',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 50,
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Почта не может быть пустой';
                    }
                    if(!isValidEmail(value))
                    {
                      return 'Некорректная почта';
                    }
                    if(isCirillica(value))
                    {
                      return 'Не должна содержаться кириллица';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Электронная почта',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 20,
                  controller: _loginController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Логин не может быть пустым';
                    }
                    if (value.length < 3) {
                      return 'Логин должен быть не менее 3 символов';
                    }
                    if(!isValidDigit(value))
                    {
                      return 'Логин должен содержать хотя бы одну цифру';
                    }
                     if(isCirillica(value))
                    {
                      return 'Не должна содержаться кириллица';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 8,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Пароль не может быть пустым';
                    }
                    if (value.length < 8) {
                      return 'Пароль должен быть длинной 8 символов';
                    }
                    if(!isValidPassword(value))
                    {
                      return 'Пароль должен содеражать как минимум: 1 заглавную, 1 строчную, 1 число, 1 из спецсимволов(! @ # \$ & * ~)';
                    } 
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  content: 'Регистрация',
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      signUp();
                    } else {}
                  },
                ),
                const Spacer(flex: 3),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();

    var result = await Auth(auth).signUp(RegistrationParams(
        surname: _surnameController.text,
        username: _userNameController.text,
        patronymic: _patronymicController.text,
        email: _emailController.text,
        login: _loginController.text,
        password: _passwordController.text));

    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      Navigator.pop(context);
    });
  }
  
  bool isValidPassword(String value) {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  bool isValidEmail(String value) {
     RegExp regExp = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
        return regExp.hasMatch(value);
  }
  bool isValidDigit(String value){
        RegExp regExp = new RegExp(r'\d');
        return regExp.hasMatch(value);
  }
  bool isCirillica(String value){
        RegExp regExp = new RegExp( r'[-А-яЁё]+');
        return regExp.hasMatch(value);
  }
}
