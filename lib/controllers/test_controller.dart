import 'dart:developer';
import 'dart:ffi';

import 'package:conduit/conduit.dart';
import 'package:dart_application_1/model/response_model.dart';

class TestController extends ResourceController
{
  @Operation.post('test1')
  Future<Response> test1 () async {

    final map = request!.body.as<Map<String, dynamic>>();

    log(map["test"]);
    return Response.ok(ModelResponse(message: map["test"]));
  }
}