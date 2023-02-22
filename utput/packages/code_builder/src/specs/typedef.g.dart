// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typedef.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeDef extends TypeDef {
  @override
  final String name;
  @override
  final Expression definition;
  @override
  final BuiltList<Expression> annotations;
  @override
  final BuiltList<String> docs;

  factory _$TypeDef([void Function(TypeDefBuilder)? updates]) =>
      (new TypeDefBuilder()..update(updates)).build() as _$TypeDef;

  _$TypeDef._(
      {required this.name,
      required this.definition,
      required this.annotations,
      required this.docs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'TypeDef', 'name');
    BuiltValueNullFieldError.checkNotNull(definition, r'TypeDef', 'definition');
    BuiltValueNullFieldError.checkNotNull(
        annotations, r'TypeDef', 'annotations');
    BuiltValueNullFieldError.checkNotNull(docs, r'TypeDef', 'docs');
  }

  @override
  TypeDef rebuild(void Function(TypeDefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$TypeDefBuilder toBuilder() => new _$TypeDefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeDef &&
        name == other.name &&
        definition == other.definition &&
        annotations == other.annotations &&
        docs == other.docs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), definition.hashCode),
            annotations.hashCode),
        docs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypeDef')
          ..add('name', name)
          ..add('definition', definition)
          ..add('annotations', annotations)
          ..add('docs', docs))
        .toString();
  }
}

class _$TypeDefBuilder extends TypeDefBuilder {
  _$TypeDef? _$v;

  @override
  String? get name {
    _$this;
    return super.name;
  }

  @override
  set name(String? name) {
    _$this;
    super.name = name;
  }

  @override
  Expression? get definition {
    _$this;
    return super.definition;
  }

  @override
  set definition(Expression? definition) {
    _$this;
    super.definition = definition;
  }

  @override
  ListBuilder<Expression> get annotations {
    _$this;
    return super.annotations;
  }

  @override
  set annotations(ListBuilder<Expression> annotations) {
    _$this;
    super.annotations = annotations;
  }

  @override
  ListBuilder<String> get docs {
    _$this;
    return super.docs;
  }

  @override
  set docs(ListBuilder<String> docs) {
    _$this;
    super.docs = docs;
  }

  _$TypeDefBuilder() : super._();

  TypeDefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.name = $v.name;
      super.definition = $v.definition;
      super.annotations = $v.annotations.toBuilder();
      super.docs = $v.docs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeDef other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeDef;
  }

  @override
  void update(void Function(TypeDefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeDef build() => _build();

  _$TypeDef _build() {
    _$TypeDef _$result;
    try {
      _$result = _$v ??
          new _$TypeDef._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'TypeDef', 'name'),
              definition: BuiltValueNullFieldError.checkNotNull(
                  definition, r'TypeDef', 'definition'),
              annotations: annotations.build(),
              docs: docs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'annotations';
        annotations.build();
        _$failedField = 'docs';
        docs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TypeDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
