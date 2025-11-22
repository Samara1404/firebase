enum CitySearchStatus { loading, success, empty, error }

class CitySearchState {
  final String query;
  final List<String> suggestions;
  final CitySearchStatus status;

  CitySearchState({
    this.query = '',
    this.suggestions = const [],
    this.status = CitySearchStatus.success,
  });

  CitySearchState copyWith({
    String? query,
    List<String>? suggestions,
    CitySearchStatus? status,
  }) {
    return CitySearchState(
      query: query ?? this.query,
      suggestions: suggestions ?? this.suggestions,
      status: status ?? this.status,
    );
  }
}
