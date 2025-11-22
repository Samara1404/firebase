import 'package:tap_kg/features/chat/domain/entities/message_entity.dart';

class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatLoaded {
  final List<Message> messages;

  ChatLoaded(this.messages);
}

class ChatError extends ChatState {
  final String error;

  ChatError(this.error);
}
