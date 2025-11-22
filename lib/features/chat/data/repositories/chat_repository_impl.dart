import 'package:tap_kg/features/chat/domain/entities/message_entity.dart';
import 'package:tap_kg/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final List<Message> _messages = [];

  @override
  Future<List<Message>> getMessages() async {
    return Future.value(_messages);
  }

  @override
  Future<void> sendMessage(String text) async {
    final message = Message(
      id: DateTime.now().toString(),
      text: text,
      timestamp: DateTime.now(),
      isMe: true,
    );

    _messages.add(message);
    return Future.value();
  }

  @override
  Future<void> deleteMessage(int id) async {
    _messages.removeWhere((message) => message.id == id.toString());
    return Future.value();
  }
}
