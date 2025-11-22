import 'package:tap_kg/features/chat/domain/entities/message_entity.dart';

abstract class ChatRepository {
  Future<List<Message>> getMessages();
  Future<void> sendMessage(String text);
  Future<void> deleteMessage(int id);
}
