import 'package:kinship_calculator/kinship_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('KinshipCalculator calculation test', () {
    List<String> demo1;
    List<String> demo2;
    List<String> demo3;
    List<String> demo4;
    List<String> demo5;
    List<String> demo6;

    setUp(() {
      demo1 = KinshipCalculator.calculate(KinshipOption(
        text: '爸爸的妈妈的哥哥',
      ));

      demo2 = KinshipCalculator.calculate(KinshipOption(
        text: '爸爸的妈妈的哥哥',
        reverse: true,
        sex: 1,
      ));

      demo3 = KinshipCalculator.calculate(KinshipOption(
        text: '爸爸的妈妈的哥哥',
        reverse: true,
        sex: 0,
      ));

      demo4 = KinshipCalculator.calculate(KinshipOption(
        text: '曾祖母',
        type: 'chain',
      ));

      demo5 = KinshipCalculator.calculate(KinshipOption(
        text: '爸爸的爸爸',
        reverse: false,
      ));

      demo6 = KinshipCalculator.calculate(KinshipOption(
        text: '爸爸的爸爸',
        reverse: true,
      ));
    });

    test('Default test', () {
      expect(demo1.toString(), '[舅公]');
    });

    test('Gender test', () {
      expect(demo2.toString(), '[外甥孙]');
      expect(demo3.toString(), '[外甥孙女]');
    });

    test('Chain test', () {
      expect(demo4.toString(), '[爸爸的爸爸的妈妈]');
    });

    test('Reverse test', () {
      expect(demo5.toString(), '[爷爷]');
      expect(demo6.toString(), '[孙子]');
    });
  });
}
