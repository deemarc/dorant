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


/** This is an auto generated class representing the IngredientUsed type in your schema. */
@immutable
class IngredientUsed extends Model {
  static const classType = const _IngredientUsedModelType();
  final String id;
  final int? _amount;
  final String? _ingredientID;
  final List<MenuIngredientUsed>? _menus;
  final String? _choiceID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  int? get amount {
    return _amount;
  }
  
  String get ingredientID {
    try {
      return _ingredientID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<MenuIngredientUsed>? get menus {
    return _menus;
  }
  
  String get choiceID {
    try {
      return _choiceID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const IngredientUsed._internal({required this.id, amount, required ingredientID, menus, required choiceID, createdAt, updatedAt}): _amount = amount, _ingredientID = ingredientID, _menus = menus, _choiceID = choiceID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory IngredientUsed({String? id, int? amount, required String ingredientID, List<MenuIngredientUsed>? menus, required String choiceID}) {
    return IngredientUsed._internal(
      id: id == null ? UUID.getUUID() : id,
      amount: amount,
      ingredientID: ingredientID,
      menus: menus != null ? List<MenuIngredientUsed>.unmodifiable(menus) : menus,
      choiceID: choiceID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientUsed &&
      id == other.id &&
      _amount == other._amount &&
      _ingredientID == other._ingredientID &&
      DeepCollectionEquality().equals(_menus, other._menus) &&
      _choiceID == other._choiceID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("IngredientUsed {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("ingredientID=" + "$_ingredientID" + ", ");
    buffer.write("choiceID=" + "$_choiceID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  IngredientUsed copyWith({String? id, int? amount, String? ingredientID, List<MenuIngredientUsed>? menus, String? choiceID}) {
    return IngredientUsed._internal(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      ingredientID: ingredientID ?? this.ingredientID,
      menus: menus ?? this.menus,
      choiceID: choiceID ?? this.choiceID);
  }
  
  IngredientUsed.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _amount = (json['amount'] as num?)?.toInt(),
      _ingredientID = json['ingredientID'],
      _menus = json['menus'] is List
        ? (json['menus'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MenuIngredientUsed.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _choiceID = json['choiceID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'amount': _amount, 'ingredientID': _ingredientID, 'menus': _menus?.map((MenuIngredientUsed? e) => e?.toJson()).toList(), 'choiceID': _choiceID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'amount': _amount, 'ingredientID': _ingredientID, 'menus': _menus, 'choiceID': _choiceID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField AMOUNT = QueryField(fieldName: "amount");
  static final QueryField INGREDIENTID = QueryField(fieldName: "ingredientID");
  static final QueryField MENUS = QueryField(
    fieldName: "menus",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuIngredientUsed).toString()));
  static final QueryField CHOICEID = QueryField(fieldName: "choiceID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IngredientUsed";
    modelSchemaDefinition.pluralName = "IngredientUseds";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["ingredientID"], name: "byIngredient"),
      ModelIndex(fields: const ["choiceID"], name: "byChoice")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IngredientUsed.AMOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IngredientUsed.INGREDIENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: IngredientUsed.MENUS,
      isRequired: false,
      ofModelName: (MenuIngredientUsed).toString(),
      associatedKey: MenuIngredientUsed.INGREDIENTUSED
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IngredientUsed.CHOICEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _IngredientUsedModelType extends ModelType<IngredientUsed> {
  const _IngredientUsedModelType();
  
  @override
  IngredientUsed fromJson(Map<String, dynamic> jsonData) {
    return IngredientUsed.fromJson(jsonData);
  }
}