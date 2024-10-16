prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Consultas Interessantes'
,p_alias=>'CONSULTAS-INTERESSANTES'
,p_step_title=>'Consultas Interessantes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117847843342853713241)
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
 p_id=>wwv_flow_imp.id(117847844019506713242)
,p_name=>'JOGOSMAIS2APOSTAS'
,p_template=>wwv_flow_imp.id(117280770179231489001)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT idJogo, COUNT(*) AS TotalBets',
'FROM (',
'    SELECT idJogo FROM betResultado',
'    UNION ALL',
'    SELECT idJogo FROM betVencedor',
'    UNION ALL',
'    SELECT idJogo FROM betMarcador',
') ',
'GROUP BY idJogo',
'HAVING COUNT(*) > 2',
'ORDER BY TotalBets DESC'))
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
 p_id=>wwv_flow_imp.id(117847844453583713243)
,p_query_column_id=>1
,p_column_alias=>'IDJOGO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Jogo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117847844800141713243)
,p_query_column_id=>2
,p_column_alias=>'TOTALBETS'
,p_column_display_sequence=>2
,p_column_heading=>'Total de Apostas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(117879000403667717605)
,p_name=>'USERTODASCOMP'
,p_template=>wwv_flow_imp.id(117280770179231489001)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT u.idUtilizador, u.nomeUtilizador',
'FROM utilizador u',
'WHERE NOT EXISTS (',
'    SELECT c.idCompeticao',
'    FROM competicao c',
'    WHERE NOT EXISTS (',
'        SELECT a.idUtilizador',
'        FROM aposta a',
'        JOIN betResultado br ON a.numBetUser = br.numBetUser AND a.idUtilizador = br.idUtilizador',
'        JOIN jogo j ON br.idJogo = j.idJogo',
'        WHERE a.idUtilizador = u.idUtilizador AND j.idCompeticao = c.idCompeticao',
'        UNION ALL',
'        SELECT a.idUtilizador',
'        FROM aposta a',
'        JOIN betVencedor bv ON a.numBetUser = bv.numBetUser AND a.idUtilizador = bv.idUtilizador',
'        JOIN jogo j ON bv.idJogo = j.idJogo',
'        WHERE a.idUtilizador = u.idUtilizador AND j.idCompeticao = c.idCompeticao',
'        UNION ALL',
'        SELECT a.idUtilizador',
'        FROM aposta a',
'        JOIN betMarcador bm ON a.numBetUser = bm.numBetUser AND a.idUtilizador = bm.idUtilizador',
'        JOIN jogo j ON bm.idJogo = j.idJogo',
'        WHERE a.idUtilizador = u.idUtilizador AND j.idCompeticao = c.idCompeticao',
'    )',
')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(117280808541153489016)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117879000733799717608)
,p_query_column_id=>1
,p_column_alias=>'IDUTILIZADOR'
,p_column_display_sequence=>10
,p_column_heading=>'Id Utilizador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117879000819851717609)
,p_query_column_id=>2
,p_column_alias=>'NOMEUTILIZADOR'
,p_column_display_sequence=>20
,p_column_heading=>'Nome do Utilizador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(117879000983370717610)
,p_name=>'JOGOSMAIS2APOSTAS'
,p_template=>wwv_flow_imp.id(117280770179231489001)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT u.idUtilizador, u.nomeUtilizador, MAX(a.montante) as HighestBet',
'FROM aposta a',
'JOIN utilizador u ON a.idUtilizador = u.idUtilizador',
'GROUP BY u.idUtilizador, u.nomeUtilizador',
'ORDER BY HighestBet DESC',
'FETCH FIRST 1 ROWS ONLY'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(117280808541153489016)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117879001052168717611)
,p_query_column_id=>1
,p_column_alias=>'IDUTILIZADOR'
,p_column_display_sequence=>10
,p_column_heading=>'Id Utilizador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117879001349231717614)
,p_query_column_id=>2
,p_column_alias=>'NOMEUTILIZADOR'
,p_column_display_sequence=>30
,p_column_heading=>'Nome do Utilizador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(117879001295749717613)
,p_query_column_id=>3
,p_column_alias=>'HIGHESTBET'
,p_column_display_sequence=>40
,p_column_heading=>'Valor mais alto apostado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117552180689206936543)
,p_name=>'JOGOMAISAPOSTAS'
,p_item_sequence=>10
,p_prompt=>'Jogos com mais de 2 apostas realizadas por utilizadores.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(117280841029254489032)
,p_item_icon_css_classes=>'fa-plus'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117552181123632936548)
,p_name=>'USERSTODASCOMP'
,p_item_sequence=>40
,p_prompt=>unistr('Jogadores que t\00EAm apostas em todas as competi\00E7\00F5es.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(117280841029254489032)
,p_item_icon_css_classes=>'fa-plus'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117879000176922717602)
,p_name=>'USERAPOSTAMAISALTA'
,p_item_sequence=>70
,p_prompt=>'ID e nome do utilizador com a aposta mais alta ativa na base de dados.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(117280841029254489032)
,p_item_icon_css_classes=>'fa-plus'
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
