import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric IsInPage() {
  return given1<String, FlutterWorld>('I am on the {string} page',
          (key, context) async {
        final key_finder = find.text(key);
        await FlutterDriverUtils.isPresent(context.world.driver, key_finder);
      });
}

StepDefinitionGeneric IsInMain(){
  return given1<String, FlutterWorld>('I am on the Main Page',
          (key, context) async {
        final text_finder = find.text('Trending');
        await FlutterDriverUtils.isPresent(context.world.driver, text_finder);
      });
}

StepDefinitionGeneric TapAndButton() {
  return and1<String, FlutterWorld>('I tap on the {string}',
          (key, context) async {
        final key_finder = find.byValueKey(key);
        await FlutterDriverUtils.tap(context.world.driver, key_finder);
      });
}

StepDefinitionGeneric WhenTapButton(){
  return when1<String, FlutterWorld>('I tap on the {string}',
          (key, context) async {
        final key_finder = find.byValueKey(key);
        await FlutterDriverUtils.tap(context.world.driver, key_finder);
      });

}

StepDefinitionGeneric WriteText() {
  return when2<String, String, FlutterWorld>(
    'I type {string} into the {string} field',
        (text, field, context) async {
      final field_finder = find.byValueKey(field);
      await FlutterDriverUtils.enterText(context.world.driver, field_finder, text);

    });

}

StepDefinitionGeneric ThenShouldBeOnPage(){
  return then1<String, FlutterWorld>('I should be on the {string} page',
          (key, context) async {
    final text_finder = find.text(key);
    await FlutterDriverUtils.isPresent(context.world.driver, text_finder);
  });
}

StepDefinitionGeneric CheckScreenPresent() {
  return then1<String, FlutterWorld>('I expect the {string} to be printed',
          (key, context) async {
        final key_finder = find.byValueKey(key);
        await FlutterDriverUtils.isPresent(context.world.driver, key_finder);
      });
}


