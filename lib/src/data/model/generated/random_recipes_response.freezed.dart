// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../random_recipes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomResponseModel _$RandomResponseModelFromJson(Map<String, dynamic> json) {
  return _RandomResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RandomResponseModel {
  List<Recipe> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomResponseModelCopyWith<RandomResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomResponseModelCopyWith<$Res> {
  factory $RandomResponseModelCopyWith(
          RandomResponseModel value, $Res Function(RandomResponseModel) then) =
      _$RandomResponseModelCopyWithImpl<$Res, RandomResponseModel>;
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class _$RandomResponseModelCopyWithImpl<$Res, $Val extends RandomResponseModel>
    implements $RandomResponseModelCopyWith<$Res> {
  _$RandomResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomResponseModelImplCopyWith<$Res>
    implements $RandomResponseModelCopyWith<$Res> {
  factory _$$RandomResponseModelImplCopyWith(_$RandomResponseModelImpl value,
          $Res Function(_$RandomResponseModelImpl) then) =
      __$$RandomResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$$RandomResponseModelImplCopyWithImpl<$Res>
    extends _$RandomResponseModelCopyWithImpl<$Res, _$RandomResponseModelImpl>
    implements _$$RandomResponseModelImplCopyWith<$Res> {
  __$$RandomResponseModelImplCopyWithImpl(_$RandomResponseModelImpl _value,
      $Res Function(_$RandomResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RandomResponseModelImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomResponseModelImpl implements _RandomResponseModel {
  const _$RandomResponseModelImpl({required final List<Recipe> recipes})
      : _recipes = recipes;

  factory _$RandomResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomResponseModelImplFromJson(json);

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RandomResponseModel(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomResponseModelImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomResponseModelImplCopyWith<_$RandomResponseModelImpl> get copyWith =>
      __$$RandomResponseModelImplCopyWithImpl<_$RandomResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RandomResponseModel implements RandomResponseModel {
  const factory _RandomResponseModel({required final List<Recipe> recipes}) =
      _$RandomResponseModelImpl;

  factory _RandomResponseModel.fromJson(Map<String, dynamic> json) =
      _$RandomResponseModelImpl.fromJson;

  @override
  List<Recipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$RandomResponseModelImplCopyWith<_$RandomResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
