import 'package:mvp_pattern_calculator/model/model_sample.dart';
import 'package:mvp_pattern_calculator/view/interface_class.dart';

class SamplePresentor{
  late SampleModel _sampleModel;
  late interfaceClass _interfaceClass;
  SamplePresentor(interfaceClass sampleView){
    _sampleModel=SampleModel();
    _interfaceClass =sampleView;
  }
   void add(double a, b){
double result = _sampleModel.addititon(a, b);
_interfaceClass.updateViewResult(result);

   }
  void sub(double a, b){
    double result = _sampleModel.subtraction(a, b);
    _interfaceClass.updateViewResult(result);

  }   void multi(double a, b){
    double result = _sampleModel.multiplication(a, b);
    _interfaceClass.updateViewResult(result);

  }   void division(double a, b){
    double result = _sampleModel.dividsion(a, b);
    _interfaceClass.updateViewResult(result);

  }

}