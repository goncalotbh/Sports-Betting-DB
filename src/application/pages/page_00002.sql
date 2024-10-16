prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'VerJogos'
,p_alias=>'VER-JOGOS'
,p_step_title=>'Ver Jogos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117280970803219489160)
,p_plug_name=>'Jogos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117280760327757488996)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    j1.idJogo AS "JOGO",',
'    e1.idEquipa AS "IDEQUIPA 1",',
'    e2.idEquipa AS "IDEQUIPA 2",',
'    e1.nomeEquipa AS "EQUIPA 1",',
'    e2.nomeEquipa AS "EQUIPA 2",',
unistr('    c.nomeComp AS "COMPETI\00C7\00C3O",'),
'    d.nomeDesporto AS "DESPORTO",',
'    j1.dta AS "DATA"',
'FROM ',
'    jogo j1',
'JOIN ',
'    joga ja1 ON j1.idJogo = ja1.idJogo',
'JOIN ',
'    equipa e1 ON ja1.idEquipa = e1.idEquipa',
'JOIN ',
'    joga ja2 ON j1.idJogo = ja2.idJogo',
'JOIN ',
'    equipa e2 ON ja2.idEquipa = e2.idEquipa',
'JOIN ',
'    competicao c ON j1.idCompeticao = c.idCompeticao',
'JOIN ',
'    desporto d ON c.nomeDesporto = d.nomeDesporto',
'WHERE ',
'    e1.idEquipa < e2.idEquipa',
'    AND c.idCompeticao = :P2_IDCOMPETICAO',
'ORDER BY ',
'    j1.dta',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Jogos'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(117280970950592489160)
,p_name=>'Jogos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GDO.OLIVEIRA@CAMPUS.FCT.UNL.PT'
,p_internal_uid=>117280970950592489160
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280971379874489162)
,p_db_column_name=>'JOGO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID Jogo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117653231862704917906)
,p_db_column_name=>'IDEQUIPA 1'
,p_display_order=>11
,p_column_identifier=>'G'
,p_column_label=>'Id Equipa 1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117653231924848917907)
,p_db_column_name=>'IDEQUIPA 2'
,p_display_order=>21
,p_column_identifier=>'H'
,p_column_label=>'ID Equipa 2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280971734227489162)
,p_db_column_name=>'EQUIPA 1'
,p_display_order=>31
,p_column_identifier=>'B'
,p_column_label=>'Equipa 1'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_IDEQUIPA:#IDEQUIPA 1#'
,p_column_linktext=>'#EQUIPA 1#'
,p_column_link_attr=>'#IDEQUIPA 1#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280972132391489162)
,p_db_column_name=>'EQUIPA 2'
,p_display_order=>41
,p_column_identifier=>'C'
,p_column_label=>'Equipa 2'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_IDEQUIPA:#IDEQUIPA 2#'
,p_column_linktext=>'#EQUIPA 2#'
,p_column_link_attr=>'#IDEQUIPA 2#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280972532763489163)
,p_db_column_name=>unistr('COMPETI\00C7\00C3O')
,p_display_order=>51
,p_column_identifier=>'D'
,p_column_label=>unistr('Competi\00E7\00E3o')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280972921910489163)
,p_db_column_name=>'DESPORTO'
,p_display_order=>61
,p_column_identifier=>'E'
,p_column_label=>'Desporto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117280973341498489163)
,p_db_column_name=>'DATA'
,p_display_order=>71
,p_column_identifier=>'F'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(117282441653920779367)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1172824417'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('JOGO:EQUIPA 1:EQUIPA 2:COMPETI\00C7\00C3O:DESPORTO:DATA')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117280974473026489164)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(117280782517084489006)
,p_plug_display_sequence=>2
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(117279866197516488955)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(117280845297654489034)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117280973762659489164)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(117280970803219489160)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(117280843794189489033)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117232173571056832813)
,p_name=>'P2_IDCOMPETICAO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
