/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the IngredientLocation type in your schema. */
@immutable
class IngredientLocation extends Model {
  static const classType = const _IngredientLocationModelType();
  final String id;
  final String? _name;
  final String? _url;
  final List<Ingredient>? _Ingredients;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get url {
    return _url;
  }
  
  List<Ingredient>? get Ingredients {
    return _Ingredients;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const IngredientLocation._internal({required this.id, required name, url, Ingredients, createdAt, updatedAt}): _name = name, _url = url, _Ingredients = Ingredients, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory IngredientLocation({String? id, required String name, String? url, List<Ingredient>? Ingredients}) {
    return IngredientLocation._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      url: url,
      Ingredients: Ingredients != null ? List<Ingredient>.unmodifiable(Ingredients) : Ingredients);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientLocation &&
      id == other.id &&
      _name == other._name &&
      _url == other._url &&
      DeepCollectionEquality().equals(_Ingredients, other._Ingredients);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("IngredientLocation {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  IngredientLocation copyWith({String? id, String? name, String? url, List<Ingredient>? Ingredients}) {
    return IngredientLocation._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      Ingredients: Ingredients ?? this.Ingredients);
  }
  
  IngredientLocation.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _url = json['url'],
      _Ingredients = json['Ingredients'] is List
        ? (json['Ingredients'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Ingredient.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'url': _url, 'Ingredients': _Ingredients?.map((Ingredient? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'url': _url, 'Ingredients': _Ingredients, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField INGREDIENTS = QueryField(
    fieldName: "Ingredients",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Ingredient).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IngredientLocation";
    modelSchemaDefinition.pluralName = "IngredientLocations";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IngredientLocation.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IngredientLocation.URL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: IngredientLocation.INGREDIENTS,
      isRequired: false,
      ofModelName: (Ingredient).toString(),
      associatedKey: Ingredient.INGREDIENTLOCATIONID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _IngredientLocationModelType extends ModelType<IngredientLocation> {
  const _IngredientLocationModelType();
  
  @override
  IngredientLocation fromJson(Map<String, dynamic> jsonData) {
    return IngredientLocation.fromJson(jsonData);
  }
}