import 'package:calculator_getx/controllers/calculator_controller.dart';
import 'package:calculator_getx/widgets/line_separator.dart';
import 'package:calculator_getx/widgets/main_result.dart';
import 'package:calculator_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResult extends StatelessWidget {
  MathResult({Key? key}) : super(key: key);

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: calculatorCtrl.firstNumber.value),
          SubResult(text: calculatorCtrl.operation.value),
          SubResult(text: calculatorCtrl.secondNumber.value),
          const LineSeparator(),
          MainResultText(text: calculatorCtrl.mathResult.value),
        ],
      ),
    );
  }
}
