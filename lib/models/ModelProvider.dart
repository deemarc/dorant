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

import 'package:amplify_core/amplify_core.dart';
import 'Choice.dart';
import 'Ingredient.dart';
import 'IngredientCatagory.dart';
import 'IngredientLocation.dart';
import 'IngredientStock.dart';
import 'IngredientUsed.dart';
import 'Menu.dart';
import 'MenuIngredientUsed.dart';
import 'Option.dart';
import 'Order.dart';
import 'OrderItem.dart';
import 'Table.dart';

export 'Choice.dart';
export 'Ingredient.dart';
export 'IngredientCatagory.dart';
export 'IngredientLocation.dart';
export 'IngredientStock.dart';
export 'IngredientUsed.dart';
export 'Menu.dart';
export 'MenuIngredientUsed.dart';
export 'Option.dart';
export 'Order.dart';
export 'OrderItem.dart';
export 'OrderStatus.dart';
export 'Table.dart';
export 'TableStatus.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "2711a6009601defca0266dee5b90a851";
  @override
  List<ModelSchema> modelSchemas = [Choice.schema, Ingredient.schema, IngredientCatagory.schema, IngredientLocation.schema, IngredientStock.schema, IngredientUsed.schema, Menu.schema, MenuIngredientUsed.schema, Option.schema, Order.schema, OrderItem.schema, Table.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Choice":
        return Choice.classType;
      case "Ingredient":
        return Ingredient.classType;
      case "IngredientCatagory":
        return IngredientCatagory.classType;
      case "IngredientLocation":
        return IngredientLocation.classType;
      case "IngredientStock":
        return IngredientStock.classType;
      case "IngredientUsed":
        return IngredientUsed.classType;
      case "Menu":
        return Menu.classType;
      case "MenuIngredientUsed":
        return MenuIngredientUsed.classType;
      case "Option":
        return Option.classType;
      case "Order":
        return Order.classType;
      case "OrderItem":
        return OrderItem.classType;
      case "Table":
        return Table.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}