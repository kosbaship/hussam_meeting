import 'package:todos_from_api/core/network/api_todos.dart';
import 'package:todos_from_api/core/storage/local_todos.dart';
import 'package:todos_from_api/feature/todos/domain/models/todo_model.dart';

abstract class Repository {
  Future<List<TodoModel>> getAllTodos();
}

class RepositoryImpl extends Repository {
  ApiClient api;
  StorageClient storage;

  RepositoryImpl(this.api, this.storage);

  @override
  Future<List<TodoModel>> getAllTodos() async {
    final listOfTodos = <TodoModel>[];
    // if this device DO NOT have internet connection
    // connectivity package
    // get data from storage
    final dataFromStorage = await storage.getAllTodos();
    listOfTodos.addAll(dataFromStorage);
    // else
    // get data from remote
    final dataFRomServer = await api.getAllTodos();
    listOfTodos.addAll(dataFRomServer);

    return listOfTodos;
  }
}

///
///
/// try to get data from storage
///     - data
///     - catch
///
/// if you get catch error from storage
/// get data from api
/// save data into storage
/// return data
///
///
///
///
///
///
///
///
///
///
///
