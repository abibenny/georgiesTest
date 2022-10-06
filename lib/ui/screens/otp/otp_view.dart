import 'package:flutter/material.dart';
import 'package:my_demo2/ui/screens/otp/otp_viewmodel.dart';
import 'package:my_demo2/ui/tools/dismiss_keyboard.dart';
import 'package:stacked/stacked.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OtpViewModel>.reactive(
        viewModelBuilder: () => OtpViewModel(),
        builder: (context, model, child) => Scaffold(
              body: SingleChildScrollView(
                child: DismissKeyboard(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/logini_register.png"),
                            fit: BoxFit.cover)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [

                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(""),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
