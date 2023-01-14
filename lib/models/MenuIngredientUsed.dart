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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the MenuIngredientUsed type in your schema. */
@immutable
class MenuIngredientUsed extends Model {
  static const classType = const _MenuIngredientUsedModelType();
  final String id;
  final IngredientUsed? _ingredientUsed;
  final Menu? _menu;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  IngredientUsed get ingredientUsed {
    try {
      return _ingredientUsed!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Menu get menu {
    try {
      return _menu!;
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
  
  const MenuIngredientUsed._internal({required this.id, required ingredientUsed, required menu, createdAt, updatedAt}): _ingredientUsed = ingredientUsed, _menu = menu, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory MenuIngredientUsed({String? id, required IngredientUsed ingredientUsed, required Menu menu}) {
    return MenuIngredientUsed._internal(
      id: id == null ? UUID.getUUID() : id,
      ingredientUsed: ingredientUsed,
      menu: menu);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuIngredientUsed &&
      id == other.id &&
      _ingredientUsed == other._ingredientUsed &&
      _menu == other._menu;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MenuIngredientUsed {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("ingredientUsed=" + (_ingredientUsed != null ? _ingredientUsed!.toString() : "null") + ", ");
    buffer.write("menu=" + (_menu != null ? _menu!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MenuIngredientUsed copyWith({String? id, IngredientUsed? ingredientUsed, Menu? menu}) {
    return MenuIngredientUsed._internal(
      id: id ?? this.id,
      ingredientUsed: ingredientUsed ?? this.ingredientUsed,
      menu: menu ?? this.menu);
  }
  
  MenuIngredientUsed.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _ingredientUsed = json['ingredientUsed']?['serializedData'] != null
        ? IngredientUsed.fromJson(new Map<String, dynamic>.from(json['ingredientUsed']['serializedData']))
        : null,
      _menu = json['menu']?['serializedData'] != null
        ? Menu.fromJson(new Map<String, dynamic>.from(json['menu']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'ingredientUsed': _ingredientUsed?.toJson(), 'menu': _menu?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'ingredientUsed': _ingredientUsed, 'menu': _menu, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField INGREDIENTUSED = QueryField(
    fieldName: "ingredientUsed",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (IngredientUsed).toString()));
  static final QueryField MENU = QueryField(
    fieldName: "menu",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Menu).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MenuIngredientUsed";
    modelSchemaDefinition.pluralName = "MenuIngredientUseds";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["ingredientUsedID"], name: "byIngredientUsed"),
      ModelIndex(fields: const ["menuID"], name: "byMenu")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: MenuIngredientUsed.INGREDIENTUSED,
      isRequired: true,
      targetName: "ingredientUsedID",
      ofModelName: (IngredientUsed).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: MenuIngredientUsed.MENU,
      isRequired: true,
      targetName: "menuID",
      ofModelName: (Menu).toString()
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

class _MenuIngredientUsedModelType extends ModelType<MenuIngredientUsed> {
  const _MenuIngredientUsedModelType();
  
  @override
  MenuIngredientUsed fromJson(Map<String, dynamic> jsonData) {
    return MenuIngredientUsed.fromJson(jsonData);
  }
}