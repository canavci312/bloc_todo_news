import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
abstract class TodoFailure with _$TodoFailure {
  const factory TodoFailure.unexpected() = Unexpected;
  const factory TodoFailure.insufficientPermissions() = InsufficientPermissions;
  const factory TodoFailure.unableToUpdate() = UnableToUpdate;
  const factory TodoFailure.unableToRemove() = UnableToRemove;

}