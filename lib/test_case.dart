import 'dart:mirrors';

import 'package:xunit_example/test_result.dart';

import 'was_run.dart';

abstract class TestCase {
  String name;

  TestCase(this.name);

  TestResult run() {
    TestResult result = TestResult();
    result.testStarted();
    if (this is WasRun) {
      (this as WasRun).setUp();
    }

    InstanceMirror instanceMirror = reflect(this);
    instanceMirror.invoke(Symbol(name), []);

    if (this is WasRun) {
      (this as WasRun).tearDown();
    }

    return result;
  }
}
