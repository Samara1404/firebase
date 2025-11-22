import 'package:tap_kg/features/chat/domain/repositories/chat_repository.dart';

class SendMessageUsecase {
  final ChatRepository repository;
  SendMessageUsecase(this.repository);

  Future<void> execute(String text) async {
    await repository.sendMessage(text);
  }
}
