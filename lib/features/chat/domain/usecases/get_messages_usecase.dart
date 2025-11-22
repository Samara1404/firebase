import 'package:tap_kg/features/chat/domain/entities/message_entity.dart';
import 'package:tap_kg/features/chat/domain/repositories/chat_repository.dart';

class GetMessagesUsecase {
  final ChatRepository repository;
  GetMessagesUsecase(this.repository);

  Future<List<Message>> execute() {
    return repository.getMessages();
  }
}
