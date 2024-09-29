import 'dart:mirrors';

import 'package:xunit_example/test_result.dart';

import 'was_run.dart';

abstract class TestCase {
  String name;

  TestCase(this.name);

  TestResult run({Function? setUp}) {
    TestResult result = TestResult();
    result.testStarted();
    if (this is WasRun) {
      (this as WasRun).setUp(callback: setUp);
    }

    InstanceMirror instanceMirror = reflect(this);
    try {
      instanceMirror.invoke(Symbol(name), []);
    } catch (e) {
      result.testFailed();
    }

    if (this is WasRun) {
      (this as WasRun).tearDown();
    }

    return result;
  }
}
