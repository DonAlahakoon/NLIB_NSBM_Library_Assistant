import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/app_files/category_i_files/home_page.dart';
import 'package:provider/provider.dart';

import '../app_credentials/sign_in.dart';
import '../models/student.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    
    final stUser = Provider.of<StudentUser?>(context);
    //return either home or authenticate widget
    if(stUser == null){
      return const SignIn();
    }else{
      return const MainHomePage();
    }
  }
}