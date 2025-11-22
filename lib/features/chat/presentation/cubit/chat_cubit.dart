import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_kg/features/chat/domain/entities/message_entity.dart';
import 'package:tap_kg/features/chat/domain/repositories/chat_repository.dart';
import 'package:tap_kg/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:tap_kg/features/chat/presentation/cubit/chat_state.dart';

class ChatCubit extends Cubit {
  ChatCubit(this.repository) : super(ChatInitial());

  final ChatRepository repository;
  List<Message> _messages = [];

  Future<void> getMessages() async {
    emit(ChatLoading());
    try {
      _messages = await repository.getMessages();
      emit(ChatLoaded(List.from(_messages)));
    } catch (e) {
      emit(ChatError(e.toString()));
    }
  }

  Future<void> sendMessage(String text) async {
    final message = Message(
      id: DateTime.now().toString(),
      text: text,
      timestamp: DateTime.now(),
      isMe: true,
    );

    // Добавляем сообщение в локальный список сразу
    _messages.add(message);
    emit(ChatLoaded(List.from(_messages)));

    // Отправляем в репозиторий
    try {
      await repository.sendMessage(text);
    } catch (e) {
      emit(ChatError("Ошибка при отправке сообщения"));
    }
  }

  Future<void> deleteMessage(String id) async {
    _messages.removeWhere((msg) => msg.id == id);
    emit(ChatLoaded(List.from(_messages)));

    try {
      await repository.deleteMessage(int.parse(id));
    } catch (e) {
      emit(ChatError("Ошибка при удалении сообщения"));
    }
  }
}
