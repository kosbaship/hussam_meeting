import 'package:todos_from_api/feature/todos/domain/models/todo_model.dart';

abstract class FakeData {
  Future<List<TodoModel>> getAllTodos();
}

class FakeDataImpl extends FakeData {
  @override
  Future<List<TodoModel>> getAllTodos() async {
    return [
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
      TodoModel(id: 1, userId: 212, title: "title", completed: false),
    ];
  }
}
