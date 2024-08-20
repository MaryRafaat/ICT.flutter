import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_my_app/widgets/coustom_text_form_fild.dart';
import 'package:flutter_my_app/widgets/custom_text.dart';
import 'package:flutter_my_app/widgets/custom_elevated_button.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  var EmailController = TextEditingController();
  var IDController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                Text: 'Email',
                controller:
                    EmailController, //at5zn hna al email aly al user ktbo
                hintText: 'University Email',
                label: ' Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                Text: 'ID',
                hintText: 'University ID ',
                label: 'ID',
                keyboardType: TextInputType.number,
                controller: IDController, //at5zn hna al id aly al user ktbo
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'ID is required';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              customElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // al code aly hytnfz ba3d ma user das submit
                  }
                },
                text: 'Submit',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
