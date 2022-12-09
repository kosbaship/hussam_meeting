import 'package:todos_from_api/feature/todos/domain/models/todo_model.dart';

abstract class StorageClient {
  Future<List<TodoModel>> getAllTodos();
}

class StorageClientImpl extends StorageClient {
  @override
  Future<List<TodoModel>> getAllTodos() async {
    // get datat from hive
    throw UnimplementedError();
  }
}
