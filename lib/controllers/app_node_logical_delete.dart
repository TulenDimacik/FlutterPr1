import 'dart:io';

import 'package:apibackend/model/node.dart';
import 'package:conduit/conduit.dart';

import '../utils/app_response.dart';
import '../utils/app_utils.dart';

class AppNodeDeleteLogicalController extends ResourceController {
  AppNodeDeleteLogicalController(this.managedContext);

  final ManagedContext managedContext;

  @Operation.put('id')
  Future<Response> deleteLogicalFinanceData(
    @Bind.header(HttpHeaders.authorizationHeader) String header,
    @Bind.path("id") int id,
    @Bind.query('isDeleted') String isDeleted,
  ) async {
    try {
      final currentUserId = AppUtils.getIdFromHeader(header);
      final node =
          await managedContext.fetchObjectWithID<Node>(id);
      if (node == null) {
        return AppResponse.ok(message: "Заметка не найдена");
      }
      if (node.user?.id != currentUserId) {
        return AppResponse.ok(message: "Нет доступа к заметке :(");
      }
      bool delorback = true;
      if (isDeleted == "true") {
        delorback = true;
      } else if (isDeleted == "false") {
        delorback = false;
      } else {
        return AppResponse.ok(message: "Введено неверное значение");
      }
      final qDeleteLogicalNode = Query<Node>(managedContext)
        ..where((x) => x.id).equalTo(id)
        ..values.isDeleted = delorback;
      await qDeleteLogicalNode.update();
      return AppResponse.ok(
          message:
              "Успешное логическое удаление или восстановление заметки");
    } catch (error) {
      return AppResponse.serverError(error,
          message:
              "Ошибка логического удаления или восстановления заметки");
    }
  }
}
