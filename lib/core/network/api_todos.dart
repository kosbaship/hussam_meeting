import 'package:dio/dio.dart';
import 'package:todos_from_api/feature/todos/domain/models/todo_model.dart';

abstract class ApiClient {
  Future<List<TodoModel>> getAllTodos();
}

class ApiClientImpl extends ApiClient {
  @override
  Future<List<TodoModel>> getAllTodos() async {
    Dio dio = Dio();
    List<TodoModel> todo = [];
    try {
      var response =
          await dio.get("https://jsonplaceholder.typicode.com/todos");
      var list = response.data as List;
      todo = list.map((todo) => TodoModel.fromJson(todo)).toList();
    } catch (error) {
      print(error.toString());
    }
    return todo;
  }
}
