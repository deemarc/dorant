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


/** This is an auto generated class representing the Order type in your schema. */
@immutable
class Order extends Model {
  static const classType = const _OrderModelType();
  final String id;
  final OrderStatus? _status;
  final String? _tableID;
  final TemporalDateTime? _created;
  final TemporalDateTime? _updated;
  final String? _user;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  OrderStatus? get status {
    return _status;
  }
  
  String get tableID {
    try {
      return _tableID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get created {
    return _created;
  }
  
  TemporalDateTime? get updated {
    return _updated;
  }
  
  String? get user {
    return _user;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Order._internal({required this.id, status, required tableID, created, updated, user, createdAt, updatedAt}): _status = status, _tableID = tableID, _created = created, _updated = updated, _user = user, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Order({String? id, OrderStatus? status, required String tableID, TemporalDateTime? created, TemporalDateTime? updated, String? user}) {
    return Order._internal(
      id: id == null ? UUID.getUUID() : id,
      status: status,
      tableID: tableID,
      created: created,
      updated: updated,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
      id == other.id &&
      _status == other._status &&
      _tableID == other._tableID &&
      _created == other._created &&
      _updated == other._updated &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Order {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("status=" + (_status != null ? enumToString(_status)! : "null") + ", ");
    buffer.write("tableID=" + "$_tableID" + ", ");
    buffer.write("created=" + (_created != null ? _created!.format() : "null") + ", ");
    buffer.write("updated=" + (_updated != null ? _updated!.format() : "null") + ", ");
    buffer.write("user=" + "$_user" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Order copyWith({String? id, OrderStatus? status, String? tableID, TemporalDateTime? created, TemporalDateTime? updated, String? user}) {
    return Order._internal(
      id: id ?? this.id,
      status: status ?? this.status,
      tableID: tableID ?? this.tableID,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      user: user ?? this.user);
  }
  
  Order.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _status = enumFromString<OrderStatus>(json['status'], OrderStatus.values),
      _tableID = json['tableID'],
      _created = json['created'] != null ? TemporalDateTime.fromString(json['created']) : null,
      _updated = json['updated'] != null ? TemporalDateTime.fromString(json['updated']) : null,
      _user = json['user'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'status': enumToString(_status), 'tableID': _tableID, 'created': _created?.format(), 'updated': _updated?.format(), 'user': _user, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'status': _status, 'tableID': _tableID, 'created': _created, 'updated': _updated, 'user': _user, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField TABLEID = QueryField(fieldName: "tableID");
  static final QueryField CREATED = QueryField(fieldName: "created");
  static final QueryField UPDATED = QueryField(fieldName: "updated");
  static final QueryField USER = QueryField(fieldName: "user");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Order";
    modelSchemaDefinition.pluralName = "Orders";
    
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
      ModelIndex(fields: const ["tableID"], name: "byTable")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.STATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.TABLEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.CREATED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.UPDATED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.USER,
      isRequired: false,
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

class _OrderModelType extends ModelType<Order> {
  const _OrderModelType();
  
  @override
  Order fromJson(Map<String, dynamic> jsonData) {
    return Order.fromJson(jsonData);
  }
}