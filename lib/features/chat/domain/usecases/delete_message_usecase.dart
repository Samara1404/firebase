import 'package:tap_kg/features/chat/domain/repositories/chat_repository.dart';

class DeleteMessageUsecase {
  final ChatRepository repository;

  DeleteMessageUsecase(this.repository);

  Future<void> execute(int id) async {
    await repository.deleteMessage(id);
  }
}
