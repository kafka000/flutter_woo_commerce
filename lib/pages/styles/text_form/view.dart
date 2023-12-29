import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';
import 'index.dart';

class TextFormPage extends GetView<TextFormController> {
  const TextFormPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildTextForm() {
    return Form(
        key: controller.formKey, //设置globalKey，用于后面获取FormState
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: <Widget>[
          TextFormWidget(
            // autofocus: true,
            keyboardType: TextInputType.emailAddress,
            controller: controller.unameController,
            labelText: "email",
            // validator: Validatorless.multiple([
            //   Validatorless.required("The field is obligatory"),
            //   Validatorless.min(6,
            //       "Length cannot be less than @size".trParams({"size": "6"})),
            //   Validatorless.max(
            //       18,
            //       "Length cannot be greater than @size"
            //           .trParams({"size": "18"})),
            //   Validatorless.email("The field must be an email"),
            // ]),
          ),
          TextFormWidget(
            controller: controller.pwdController,
            labelText: "password",
            isObscure: true,
            // validator: Validatorless.multiple([
            //   Validatorless.required("The field is obligatory"),
            //   Validatorless.min(6,
            //       "Length cannot be less than @size".trParams({"size": "6"})),
            //   Validatorless.max(
            //       18,
            //       "Length cannot be greater than @size"
            //           .trParams({"size": "18"})),
            // ]),
          ).marginOnly(
            bottom: 10,
          ),
          ButtonWidget.primary(
            "submit",
            onTap: () {
              if ((controller.formKey.currentState as FormState).validate()) {
                try {} finally {}
              }
            },
          ).tight(width: 100, height: 40),
        ].toColumn());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildTextForm().padding(
        all: AppSpace.page,
      ),
    );
  }
}
