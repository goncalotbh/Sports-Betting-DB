prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>115819092547921539682
,p_default_application_id=>199135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WBDG66'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(117279866197516488955)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117280974951030489165)
,p_parent_id=>wwv_flow_imp.id(117316809165628207041)
,p_option_sequence=>2
,p_short_name=>'Jogos'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117301080972010088487)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>unistr('Estat\00EDsticas')
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117312853256273333013)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Equipas'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117314950898792399475)
,p_parent_id=>wwv_flow_imp.id(117312853256273333013)
,p_short_name=>'Jogadores'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117316809165628207041)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>unistr('Competi\00E7\00F5es')
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117722771983207488497)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Apostas'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(117847843818700713242)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Consultas Interessantes'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118028170158533352208)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>unistr('Dep\00F3sitos')
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118035807468523246985)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Utilizadores'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(118043369514020382418)
,p_parent_id=>wwv_flow_imp.id(117279866302573488956)
,p_short_name=>'Editar Jogos'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp.component_end;
end;
/
