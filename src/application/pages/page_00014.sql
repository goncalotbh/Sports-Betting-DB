prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>unistr('Competi\00E7\00F5es')
,p_alias=>unistr('COMPETI\00C7\00D5ES')
,p_step_title=>unistr('Competi\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117316808622679207041)
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
 p_id=>wwv_flow_imp.id(117316809352941207041)
,p_plug_name=>unistr('Competi\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117280760327757488996)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IDCOMPETICAO,',
'       NOMEDESPORTO,',
'       NOMECOMP,',
'       LOCALIZACAO',
'  from COMPETICAO',
'order by NOMEDESPORTO, NOMECOMP'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Competi\00E7\00F5es')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(117316809487507207041)
,p_name=>unistr('Competi\00E7\00F5es')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AMO.GODINHO@CAMPUS.FCT.UNL.PT'
,p_internal_uid=>117316809487507207041
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117316809736646207139)
,p_db_column_name=>'IDCOMPETICAO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Idcompeticao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117316810580442207140)
,p_db_column_name=>'NOMECOMP'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>unistr('Competi\00E7\00E3o')
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_IDCOMPETICAO:#IDCOMPETICAO#'
,p_column_linktext=>'#NOMECOMP#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117316810127161207140)
,p_db_column_name=>'NOMEDESPORTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desporto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117316810994857207140)
,p_db_column_name=>'LOCALIZACAO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Localiza\00E7\00E3o')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(117316846891007216032)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1173168469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDCOMPETICAO:NOMEDESPORTO:NOMECOMP:LOCALIZACAO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117232173778795832815)
,p_plug_name=>'Image'
,p_parent_plug_id=>wwv_flow_imp.id(117316809352941207041)
,p_region_template_options=>'#DEFAULT#:t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_plug_template=>wwv_flow_imp.id(117280740251215488988)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<"img src=#APP_FILES#images/UEFA CHAMPIONS LEAGUE.jpg">'
,p_region_image=>'https://assets-global.website-files.com/64c924dc8db620cf2833a42d/650c26b756b715edfba1bb42_01_ChampionsLeague_DesignStudio_HeaderImage.jpg'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117232173477290832812)
,p_name=>'P14_IDCOMPETICAO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117316809352941207041)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
