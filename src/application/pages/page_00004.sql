prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>unistr('Estat\00EDsticas')
,p_alias=>'ESTATISTICAS'
,p_step_title=>unistr('Estat\00EDsticas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117301080416181088486)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(117301081193538088487)
,p_name=>unistr('M\00E9dia de golos/pontos por jogo')
,p_template=>wwv_flow_imp.id(117280770179231489001)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.nomeDesporto as DESPORTO, ROUND(AVG(gamePoints), 2) as "MEDIA PONTOS"',
'FROM (',
'    SELECT j.idJogo, j.idCompeticao, SUM(m.numPontos) as gamePoints',
'    FROM marcador m',
'    JOIN jogo j ON m.idJogo = j.idJogo',
'    GROUP BY j.idJogo, j.idCompeticao',
') gameTotals',
'JOIN competicao c ON gameTotals.idCompeticao = c.idCompeticao',
'GROUP BY c.nomeDesporto',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(117280808541153489016)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(116548120482788061650)
,p_query_column_id=>1
,p_column_alias=>'DESPORTO'
,p_column_display_sequence=>10
,p_column_heading=>'Desporto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117552176436703936501)
,p_query_column_id=>2
,p_column_alias=>'MEDIA PONTOS'
,p_column_display_sequence=>20
,p_column_heading=>unistr('M\00E9dia de golos/pontos')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117653231303459917901)
,p_name=>'MEDIAGOLOSPONTOSPORJOGO'
,p_item_sequence=>10
,p_prompt=>unistr('M\00E9dia de Golos/Pontos por jogo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(117280842331572489032)
,p_item_icon_css_classes=>'fa-bar-chart'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
