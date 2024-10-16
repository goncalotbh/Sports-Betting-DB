prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'Equipas'
,p_alias=>'EQUIPAS'
,p_step_title=>'Equipas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117312852773819333013)
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
 p_id=>wwv_flow_imp.id(117312853463208333014)
,p_plug_name=>'Equipas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117280760327757488996)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    e.IDEQUIPA,',
'    e.NOMEEQUIPA,',
'    e.COUNTRY,',
'    d.NOMEDESPORTO AS "SPORT"',
'FROM ',
'    EQUIPA e',
'JOIN ',
'    EQUIPAPARTICIPA ep ON e.IDEQUIPA = ep.IDEQUIPA',
'JOIN ',
'    COMPETICAO c ON ep.IDCOMPETICAO = c.IDCOMPETICAO',
'JOIN ',
'    DESPORTO d ON c.NOMEDESPORTO = d.NOMEDESPORTO',
'ORDER BY d.NOMEDESPORTO, e.NOMEEQUIPA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Equipas'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(117312853553272333014)
,p_name=>'Equipas'
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
,p_internal_uid=>117312853553272333014
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117312854296295333135)
,p_db_column_name=>'IDEQUIPA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Idequipa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117312854680589333136)
,p_db_column_name=>'NOMEEQUIPA'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Equipa'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_IDEQUIPA:#IDEQUIPA#'
,p_column_linktext=>'#NOMEEQUIPA#'
,p_column_link_attr=>'#IDEQUIPA#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117312855018924333136)
,p_db_column_name=>'COUNTRY'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117653231723606917905)
,p_db_column_name=>'SPORT'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Desporto'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(117312858601595334772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1173128587'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDEQUIPA:NOMEEQUIPA:COUNTRY'
);
wwv_flow_imp.component_end;
end;
/
