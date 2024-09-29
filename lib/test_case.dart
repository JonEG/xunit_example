import 'dart:mirrors';

import 'package:xunit_example/test_result.dart';

import 'was_run.dart';

abstract class TestCase {
  String name;

  TestCase(this.name);

  void run(TestResult result) {
    result.testStarted();
    setUp();

    InstanceMirror instanceMirror = reflect(this);
    try {
      instanceMirror.invoke(Symbol(name), []);
    } catch (e) {
      result.testFailed();
    }

    if (this is WasRun) {
      (this as WasRun).tearDown();
    }
  }

  void setUp();
}
