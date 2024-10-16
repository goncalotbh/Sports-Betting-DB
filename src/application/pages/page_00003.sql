prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>115819092547921539682
,p_default_application_id=>199135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WBDG66'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Jogadores'
,p_alias=>'JOGADORES'
,p_step_title=>'Jogadores'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117314950322045399474)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117280782517084489006)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(117279866197516488955)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(117280845297654489034)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117314951025015399475)
,p_plug_name=>'Jogadores'
,p_parent_plug_id=>wwv_flow_imp.id(117314950322045399474)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117279910051213488975)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SMART_FILTERS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "IDATLETA",',
'       "NOMEATLETA",',
'       "COUNTRY",',
'       "DATANASC",',
'       "IDEQUIPA",',
'       (SELECT e1."NOMEEQUIPA"',
'          FROM "EQUIPA" e1',
'         WHERE e1."IDEQUIPA" = a."IDEQUIPA") "NOMEEQUIPA"',
'  FROM "ATLETA" a',
'  WHERE a."IDEQUIPA" = :P3_IDEQUIPA'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"IDATLETA","expr":"\"IDATLETA\" asc"},{"key":"COUNTRY","expr":"\"COUNTRY\" asc"}],"itemName":"ORDER_PLAYERS_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(117314951553022399476)
,p_region_id=>wwv_flow_imp.id(117314951025015399475)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMEATLETA'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'COUNTRY'
,p_body_adv_formatting=>false
,p_body_column_name=>'NOMEEQUIPA'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'DATANASC'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'NOMEATLETA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117232173095834832808)
,p_name=>'ORDER_PLAYERS_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117314951025015399475)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'IDATLETA'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:ID Atleta;IDATLETA,Pa\00EDs;COUNTRY')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(117280841029254489032)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117232173381712832811)
,p_name=>'P3_IDEQUIPA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117314951025015399475)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
