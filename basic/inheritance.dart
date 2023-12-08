import 'classes/car.dart';
import 'classes/stain.dart';

void main(){
  final ford = Car('Ford', 2019, false, 100);
  print(ford);

  ford.start();
  print(ford);

  // Class that extends an abstract class with mixins
  final stain = Stain('Stain', 2019, true);
  stain.log('Hello from mixin');
  print(stain);

  stain.log2('Hello from mixin 2');
  print(stain);
}