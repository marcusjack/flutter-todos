import 'package:flutter/material.dart';
import 'package:todo_list/logic/all_logic.dart';

class LoginPageModel extends ChangeNotifier{

  LoginPageLogic logic;
  BuildContext context;


  String currentAnimation = "move";
  bool canShowBackdrop = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailOk = false;
  bool isPasswordOk = false;

  LoginPageModel(){
    logic = LoginPageLogic(this);
  }

  void setContext(BuildContext context){
    if(this.context == null){
        this.context = context;
    }
  }

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    debugPrint("RegisterPageModel销毁了");
  }

  void refresh(){
    notifyListeners();
  }
}