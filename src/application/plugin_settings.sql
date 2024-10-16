prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>115819092547921539682
,p_default_application_id=>199135
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WBDG66'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(24801398107306078)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15537094414228
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48444387252309641)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15537094442799
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(72087388954312860)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15537094466447
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279862515512488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15532527411871
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279862837261488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15532527411871
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279863186417488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15532527411871
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279863460841488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279863781503488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279864063134488954)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279864351974488954)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279864614093488955)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279864973851488955)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15532527411874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(117279865264438488955)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15532527411877
);
wwv_flow_imp.component_end;
end;
/
