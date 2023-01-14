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


/** This is an auto generated class representing the Ingredient type in your schema. */
@immutable
class Ingredient extends Model {
  static const classType = const _IngredientModelType();
  final String id;
  final String? _name;
  final String? _ingredientlocationID;
  final String? _ingredientcatagoryID;
  final List<IngredientUsed>? _IngredientUseds;
  final IngredientStock? _IngredientStock;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _ingredientIngredientStockId;

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
  
  String get ingredientlocationID {
    try {
      return _ingredientlocationID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get ingredientcatagoryID {
    try {
      return _ingredientcatagoryID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<IngredientUsed>? get IngredientUseds {
    return _IngredientUseds;
  }
  
  IngredientStock? get IngredientStock {
    return _IngredientStock;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get ingredientIngredientStockId {
    return _ingredientIngredientStockId;
  }
  
  const Ingredient._internal({required this.id, required name, required ingredientlocationID, required ingredientcatagoryID, IngredientUseds, IngredientStock, createdAt, updatedAt, ingredientIngredientStockId}): _name = name, _ingredientlocationID = ingredientlocationID, _ingredientcatagoryID = ingredientcatagoryID, _IngredientUseds = IngredientUseds, _IngredientStock = IngredientStock, _createdAt = createdAt, _updatedAt = updatedAt, _ingredientIngredientStockId = ingredientIngredientStockId;
  
  factory Ingredient({String? id, required String name, required String ingredientlocationID, required String ingredientcatagoryID, List<IngredientUsed>? IngredientUseds, IngredientStock? IngredientStock, String? ingredientIngredientStockId}) {
    return Ingredient._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      ingredientlocationID: ingredientlocationID,
      ingredientcatagoryID: ingredientcatagoryID,
      IngredientUseds: IngredientUseds != null ? List<IngredientUsed>.unmodifiable(IngredientUseds) : IngredientUseds,
      IngredientStock: IngredientStock,
      ingredientIngredientStockId: ingredientIngredientStockId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ingredient &&
      id == other.id &&
      _name == other._name &&
      _ingredientlocationID == other._ingredientlocationID &&
      _ingredientcatagoryID == other._ingredientcatagoryID &&
      DeepCollectionEquality().equals(_IngredientUseds, other._IngredientUseds) &&
      _IngredientStock == other._IngredientStock &&
      _ingredientIngredientStockId == other._ingredientIngredientStockId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Ingredient {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("ingredientlocationID=" + "$_ingredientlocationID" + ", ");
    buffer.write("ingredientcatagoryID=" + "$_ingredientcatagoryID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("ingredientIngredientStockId=" + "$_ingredientIngredientStockId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Ingredient copyWith({String? id, String? name, String? ingredientlocationID, String? ingredientcatagoryID, List<IngredientUsed>? IngredientUseds, IngredientStock? IngredientStock, String? ingredientIngredientStockId}) {
    return Ingredient._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      ingredientlocationID: ingredientlocationID ?? this.ingredientlocationID,
      ingredientcatagoryID: ingredientcatagoryID ?? this.ingredientcatagoryID,
      IngredientUseds: IngredientUseds ?? this.IngredientUseds,
      IngredientStock: IngredientStock ?? this.IngredientStock,
      ingredientIngredientStockId: ingredientIngredientStockId ?? this.ingredientIngredientStockId);
  }
  
  Ingredient.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _ingredientlocationID = json['ingredientlocationID'],
      _ingredientcatagoryID = json['ingredientcatagoryID'],
      _IngredientUseds = json['IngredientUseds'] is List
        ? (json['IngredientUseds'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => IngredientUsed.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _IngredientStock = json['IngredientStock']?['serializedData'] != null
        ? IngredientStock.fromJson(new Map<String, dynamic>.from(json['IngredientStock']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _ingredientIngredientStockId = json['ingredientIngredientStockId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'ingredientlocationID': _ingredientlocationID, 'ingredientcatagoryID': _ingredientcatagoryID, 'IngredientUseds': _IngredientUseds?.map((IngredientUsed? e) => e?.toJson()).toList(), 'IngredientStock': _IngredientStock?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'ingredientIngredientStockId': _ingredientIngredientStockId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'ingredientlocationID': _ingredientlocationID, 'ingredientcatagoryID': _ingredientcatagoryID, 'IngredientUseds': _IngredientUseds, 'IngredientStock': _IngredientStock, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'ingredientIngredientStockId': _ingredientIngredientStockId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField INGREDIENTLOCATIONID = QueryField(fieldName: "ingredientlocationID");
  static final QueryField INGREDIENTCATAGORYID = QueryField(fieldName: "ingredientcatagoryID");
  static final QueryField INGREDIENTUSEDS = QueryField(
    fieldName: "IngredientUseds",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (IngredientUsed).toString()));
  static final QueryField INGREDIENTSTOCK = QueryField(
    fieldName: "IngredientStock",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (IngredientStock).toString()));
  static final QueryField INGREDIENTINGREDIENTSTOCKID = QueryField(fieldName: "ingredientIngredientStockId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ingredient";
    modelSchemaDefinition.pluralName = "Ingredients";
    
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
      ModelIndex(fields: const ["ingredientlocationID"], name: "byIngredientLocation"),
      ModelIndex(fields: const ["ingredientcatagoryID"], name: "byIngredientCatagory")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Ingredient.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Ingredient.INGREDIENTLOCATIONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Ingredient.INGREDIENTCATAGORYID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Ingredient.INGREDIENTUSEDS,
      isRequired: false,
      ofModelName: (IngredientUsed).toString(),
      associatedKey: IngredientUsed.INGREDIENTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Ingredient.INGREDIENTSTOCK,
      isRequired: false,
      ofModelName: (IngredientStock).toString(),
      associatedKey: IngredientStock.ID
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Ingredient.INGREDIENTINGREDIENTSTOCKID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _IngredientModelType extends ModelType<Ingredient> {
  const _IngredientModelType();
  
  @override
  Ingredient fromJson(Map<String, dynamic> jsonData) {
    return Ingredient.fromJson(jsonData);
  }
}