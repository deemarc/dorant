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


/** This is an auto generated class representing the Menu type in your schema. */
@immutable
class Menu extends Model {
  static const classType = const _MenuModelType();
  final String id;
  final String? _name;
  final List<MenuIngredientUsed>? _IngredientUseds;
  final List<OrderItem>? _OrderItems;
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
  
  List<MenuIngredientUsed>? get IngredientUseds {
    return _IngredientUseds;
  }
  
  List<OrderItem>? get OrderItems {
    return _OrderItems;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Menu._internal({required this.id, required name, IngredientUseds, OrderItems, createdAt, updatedAt}): _name = name, _IngredientUseds = IngredientUseds, _OrderItems = OrderItems, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Menu({String? id, required String name, List<MenuIngredientUsed>? IngredientUseds, List<OrderItem>? OrderItems}) {
    return Menu._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      IngredientUseds: IngredientUseds != null ? List<MenuIngredientUsed>.unmodifiable(IngredientUseds) : IngredientUseds,
      OrderItems: OrderItems != null ? List<OrderItem>.unmodifiable(OrderItems) : OrderItems);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Menu &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_IngredientUseds, other._IngredientUseds) &&
      DeepCollectionEquality().equals(_OrderItems, other._OrderItems);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Menu {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Menu copyWith({String? id, String? name, List<MenuIngredientUsed>? IngredientUseds, List<OrderItem>? OrderItems}) {
    return Menu._internal(
      id: id ?? this.id,
      name: name ?? this.name,
      IngredientUseds: IngredientUseds ?? this.IngredientUseds,
      OrderItems: OrderItems ?? this.OrderItems);
  }
  
  Menu.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _IngredientUseds = json['IngredientUseds'] is List
        ? (json['IngredientUseds'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MenuIngredientUsed.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _OrderItems = json['OrderItems'] is List
        ? (json['OrderItems'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => OrderItem.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'IngredientUseds': _IngredientUseds?.map((MenuIngredientUsed? e) => e?.toJson()).toList(), 'OrderItems': _OrderItems?.map((OrderItem? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'IngredientUseds': _IngredientUseds, 'OrderItems': _OrderItems, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField INGREDIENTUSEDS = QueryField(
    fieldName: "IngredientUseds",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (MenuIngredientUsed).toString()));
  static final QueryField ORDERITEMS = QueryField(
    fieldName: "OrderItems",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (OrderItem).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Menu";
    modelSchemaDefinition.pluralName = "Menus";
    
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
      key: Menu.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Menu.INGREDIENTUSEDS,
      isRequired: false,
      ofModelName: (MenuIngredientUsed).toString(),
      associatedKey: MenuIngredientUsed.MENU
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Menu.ORDERITEMS,
      isRequired: false,
      ofModelName: (OrderItem).toString(),
      associatedKey: OrderItem.MENUID
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

class _MenuModelType extends ModelType<Menu> {
  const _MenuModelType();
  
  @override
  Menu fromJson(Map<String, dynamic> jsonData) {
    return Menu.fromJson(jsonData);
  }
}