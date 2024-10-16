prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 199135
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>115819092547921539682
,p_default_application_id=>199135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WBDG66'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(117280961357025489151)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
