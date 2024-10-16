prompt --application/shared_components/navigation/lists/page_navigation
begin
--   Manifest
--     LIST: Page Navigation
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>115819092547921539682
,p_default_application_id=>199135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WBDG66'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(117280978346146489171)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117280979195465489171)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Equipas'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117608576957047567336)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Competi\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-trophy'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117634444492777521258)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Estat\00EDsticas')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117839567553114384886)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Apostas'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hashtag'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(117949064032449307893)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Consultas Interessantes'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bookmark-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118036990312524273748)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Utilizadores'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118037918438402539744)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Dep\00F3sitos')
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(118046357072050695387)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Editar Jogos'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
