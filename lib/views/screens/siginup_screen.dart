import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
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
          if (state is SiginupFailer) {
            final snackBar = SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.fixed,
                content: AwesomeSnackbarContent(
                  title: 'falier',
                  message: state.massage,
                  contentType: ContentType.failure,
                ));
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          } else if (state is SiginupSuccess) {
            final snackBar = SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.floating,
                content: AwesomeSnackbarContent(
                  title: 'Successful',
                  message: "Signup Successful!",
                  contentType: ContentType.success,
                ));
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is SiginupLoading,
              child: const SiginupScreenBody());
        },
      ),
    );
  }
}
