import 'package:ecommerce_app/logic/signup/siginup_cubit.dart';
import 'package:ecommerce_app/logic/signup/siginup_state.dart';
import 'package:ecommerce_app/views/widgets/siginup_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SiginupScreen extends StatelessWidget {
  const SiginupScreen({super.key});
  static const routeName = 'siginup_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SiginupCubit, SiginupState>(
        listener: (context, state) {
        if(state is SiginupFailer){
          ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text(state.massage))
          );
        }else if(state is SiginupSuccess){
           ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Signup Successful!'))
  );
        }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SiginupLoading ,
            child: const SiginupScreenBody());
        },
      ),
    );
  }
}
