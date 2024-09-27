import 'dart:mirrors';

import 'was_run.dart';

abstract class TestCase {
  String name;

  TestCase(this.name);

  void run() {
    if (this is WasRun) {
      (this as WasRun).setUp();
    }

    InstanceMirror instanceMirror = reflect(this);
    instanceMirror.invoke(Symbol(name), []);

    if (this is WasRun) {
      (this as WasRun).tearDown();
    }
  }
}
