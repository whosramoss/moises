/// # MoisesJobStatusEnum
/// The Job Status class, Check for more info : [docs/reference](https://developer.moises.ai/docs/reference)
enum MoisesJobStatusEnum {
  /// Queued Status - Awaiting to start
  queued('QUEUED'),

  /// Started Status - Processing has started
  started('STARTED'),

  ///	Succeeded Status - Everything has completed and the resulst are ready
  succeeded('SUCCEEDED'),

  /// failed Status - There was an error processing your media
  failed('FAILED'),

  /// None Status - Status not registered
  none('NONE');

  /// Status From Job
  final String status;

  /// The instance of the `MoisesJobStatusEnum` class.
  const MoisesJobStatusEnum(this.status);

  /// Translates a `String` type status into a `MoisesJobStatusEnum`
  static MoisesJobStatusEnum getEnumByString(String status) {
    return MoisesJobStatusEnum.values.firstWhere(
      (e) => status == e.status,
      orElse: () => MoisesJobStatusEnum.none,
    );
  }
}
