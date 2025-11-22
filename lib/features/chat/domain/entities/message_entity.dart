class Message {
  final String id;
  final String text;
  final DateTime timestamp;
  final bool isMe; // true, если сообщение от пользователя

  Message({
    required this.id,
    required this.text,
    required this.timestamp,
    required this.isMe,
  });
}
