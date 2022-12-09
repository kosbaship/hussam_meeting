import 'package:todos_from_api/feature/todos/data/repository/base_repository.dart';
import 'package:todos_from_api/feature/todos/domain/models/todo_model.dart';

class HomeViewModel {
  String title = 'Todos';
  String error = 'Error';

  Repository baseRepository;
  HomeViewModel(this.baseRepository);

  Future<List<TodoModel>> fetchAllData() async {
    return baseRepository.getAllTodos();
  }
}
