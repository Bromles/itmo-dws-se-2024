--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS fkdc4897cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS fkdc34197cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS fk_user_group_user;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS fk_t13hpu1j94r2ebpekr39x5eu5;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS fk_supported_locales_realm;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS fk_role_attribute_id;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS fk_resource_server_uris;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS fk_req_act_realm;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS fk_r_def_cli_scope_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS fk_pmconfig;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS fk_pfyr0glasqyl0dei3kl69r6v0;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_pcm_realm;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS fk_ouse064plmlr732lxjcn1q5f1;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS fk_lojpho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS fk_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS fk_idpm_realm;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nxev9f5y69j;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nwedrf5y69j;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS fk_group_role_group;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS fk_group_attribute_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS fk_grntcsnt_user;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS fk_grntcsnt_clsc_usc;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_gr7thllb9lu8q4vqa4524jjy8;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS fk_frsrso213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrps213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpp213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpos53xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrpos13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS fk_frsrpo213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrpo2128cx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrpass3xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsrpas14xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog84sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog83sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82sspmt;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrasp13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsr5s213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_realm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_fedprv;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS fk_fedmapper_cfg;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS fk_def_groups_realm;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS fk_component_realm;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS fk_component_config;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS fk_client_init_acc_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_cli_scope_mapper;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS fk_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS fk_cl_scope_rm_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS fk_cl_scope_attr_scope;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS fk_c4fqv34p1mbylloxang7b1q3l;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS fk_b4ao2vcvat6ukau74wbwtfqo1;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS fk_auth_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS fk_auth_flow_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_flow;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_a63wvekftu8jo1pnj81e7mce2;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS fk_8shxd6l3e9atqukacxgpffptw;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS fk_70ej8xdxgxd0b9hh6180irr0o;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS fk_6vyqfe4cn4wlq8r6kt5vdsj5c;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS fk_6qj3w1jw9cvafhe19bwsiuvmd;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu043kqepovbr;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu022kqepovbr;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS fk_5hg65lybevavkqfki3kponh9v;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS fk_33a8sgqw18i532811v7o2dk89;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS fk_1fj32f6ptolw2qy60cd8n01e8;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS fk_1burs8pb4ouj97h5wuppahv9f;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS fk_11b7sgqw18i532811v7o2dv76;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51d3472;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51c2736;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS fk4129723ba992f594;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS fk404288b92ef007a6;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS fk3c47c64beacca966;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS fk2b4ebc52ae5c3b34;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS auth_status_constraint;
DROP INDEX IF EXISTS public.idx_web_orig_client;
DROP INDEX IF EXISTS public.idx_usr_fed_prv_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_fed_prv;
DROP INDEX IF EXISTS public.idx_user_service_account;
DROP INDEX IF EXISTS public.idx_user_role_mapping;
DROP INDEX IF EXISTS public.idx_user_reqactions;
DROP INDEX IF EXISTS public.idx_user_group_mapping;
DROP INDEX IF EXISTS public.idx_user_email;
DROP INDEX IF EXISTS public.idx_user_credential;
DROP INDEX IF EXISTS public.idx_user_consent;
DROP INDEX IF EXISTS public.idx_user_attribute_name;
DROP INDEX IF EXISTS public.idx_user_attribute;
DROP INDEX IF EXISTS public.idx_usconsent_clscope;
DROP INDEX IF EXISTS public.idx_us_sess_id_on_cl_sess;
DROP INDEX IF EXISTS public.idx_update_time;
DROP INDEX IF EXISTS public.idx_scope_policy_policy;
DROP INDEX IF EXISTS public.idx_scope_mapping_role;
DROP INDEX IF EXISTS public.idx_role_clscope;
DROP INDEX IF EXISTS public.idx_role_attribute;
DROP INDEX IF EXISTS public.idx_res_srv_scope_res_srv;
DROP INDEX IF EXISTS public.idx_res_srv_res_res_srv;
DROP INDEX IF EXISTS public.idx_res_serv_pol_res_serv;
DROP INDEX IF EXISTS public.idx_res_scope_scope;
DROP INDEX IF EXISTS public.idx_res_policy_policy;
DROP INDEX IF EXISTS public.idx_req_act_prov_realm;
DROP INDEX IF EXISTS public.idx_redir_uri_client;
DROP INDEX IF EXISTS public.idx_realm_supp_local_realm;
DROP INDEX IF EXISTS public.idx_realm_master_adm_cli;
DROP INDEX IF EXISTS public.idx_realm_evt_types_realm;
DROP INDEX IF EXISTS public.idx_realm_evt_list_realm;
DROP INDEX IF EXISTS public.idx_realm_def_grp_realm;
DROP INDEX IF EXISTS public.idx_realm_clscope;
DROP INDEX IF EXISTS public.idx_realm_attr_realm;
DROP INDEX IF EXISTS public.idx_protocol_mapper_client;
DROP INDEX IF EXISTS public.idx_offline_uss_preload;
DROP INDEX IF EXISTS public.idx_offline_uss_createdon;
DROP INDEX IF EXISTS public.idx_offline_uss_by_usersess;
DROP INDEX IF EXISTS public.idx_offline_uss_by_user;
DROP INDEX IF EXISTS public.idx_offline_css_preload;
DROP INDEX IF EXISTS public.idx_keycloak_role_realm;
DROP INDEX IF EXISTS public.idx_keycloak_role_client;
DROP INDEX IF EXISTS public.idx_ident_prov_realm;
DROP INDEX IF EXISTS public.idx_id_prov_mapp_realm;
DROP INDEX IF EXISTS public.idx_group_role_mapp_group;
DROP INDEX IF EXISTS public.idx_group_attr_group;
DROP INDEX IF EXISTS public.idx_group_att_by_name_value;
DROP INDEX IF EXISTS public.idx_fu_role_mapping_ru;
DROP INDEX IF EXISTS public.idx_fu_role_mapping;
DROP INDEX IF EXISTS public.idx_fu_required_action_ru;
DROP INDEX IF EXISTS public.idx_fu_required_action;
DROP INDEX IF EXISTS public.idx_fu_group_membership_ru;
DROP INDEX IF EXISTS public.idx_fu_group_membership;
DROP INDEX IF EXISTS public.idx_fu_credential_ru;
DROP INDEX IF EXISTS public.idx_fu_credential;
DROP INDEX IF EXISTS public.idx_fu_consent_ru;
DROP INDEX IF EXISTS public.idx_fu_consent;
DROP INDEX IF EXISTS public.idx_fu_cnsnt_ext;
DROP INDEX IF EXISTS public.idx_fu_attribute;
DROP INDEX IF EXISTS public.idx_fedidentity_user;
DROP INDEX IF EXISTS public.idx_fedidentity_feduser;
DROP INDEX IF EXISTS public.idx_event_time;
DROP INDEX IF EXISTS public.idx_defcls_scope;
DROP INDEX IF EXISTS public.idx_defcls_realm;
DROP INDEX IF EXISTS public.idx_composite_child;
DROP INDEX IF EXISTS public.idx_composite;
DROP INDEX IF EXISTS public.idx_component_realm;
DROP INDEX IF EXISTS public.idx_component_provider_type;
DROP INDEX IF EXISTS public.idx_compo_config_compo;
DROP INDEX IF EXISTS public.idx_clscope_role;
DROP INDEX IF EXISTS public.idx_clscope_protmap;
DROP INDEX IF EXISTS public.idx_clscope_cl;
DROP INDEX IF EXISTS public.idx_clscope_attrs;
DROP INDEX IF EXISTS public.idx_client_session_session;
DROP INDEX IF EXISTS public.idx_client_init_acc_realm;
DROP INDEX IF EXISTS public.idx_client_id;
DROP INDEX IF EXISTS public.idx_cl_clscope;
DROP INDEX IF EXISTS public.idx_auth_flow_realm;
DROP INDEX IF EXISTS public.idx_auth_exec_realm_flow;
DROP INDEX IF EXISTS public.idx_auth_exec_flow;
DROP INDEX IF EXISTS public.idx_auth_config_realm;
DROP INDEX IF EXISTS public.idx_assoc_pol_assoc_pol_id;
DROP INDEX IF EXISTS public.idx_admin_event_time;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_ru8tt6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS uk_orvsdmla56612eaefiq6wl5oi;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS uk_jkuwuvd56ontgsuhogm8uewrt;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS uk_frsrst700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS uk_frsrpt700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5pmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_dykn684sl8up1crfei6eckhd7;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS uk_cli_scope;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS uk_b71cjlbenv945rb6gcon438at;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS uk_2daelwnibji49avxsrtuf6xj33;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS sibling_names;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS res_attr_pk;
ALTER TABLE IF EXISTS ONLY public.realm_localizations DROP CONSTRAINT IF EXISTS realm_localizations_pkey;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS r_def_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS pk_template_scope;
ALTER TABLE IF EXISTS ONLY public.resource_server DROP CONSTRAINT IF EXISTS pk_resource_server;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS pk_cli_template;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS pk_cl_tmpl_attr;
ALTER TABLE IF EXISTS ONLY public.databasechangeloglock DROP CONSTRAINT IF EXISTS databasechangeloglock_pkey;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS constraint_web_origins;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS constraint_usn_pk;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS constraint_user_group;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS constraint_user_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS constraint_role_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS constraint_resour_uris_pk;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS constraint_required_action;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS constraint_req_act_prv_pk;
ALTER TABLE IF EXISTS ONLY public.required_action_config DROP CONSTRAINT IF EXISTS constraint_req_act_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS constraint_redirect_uris;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS constraint_pmconfig;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS constraint_pcm;
ALTER TABLE IF EXISTS ONLY public.offline_user_session DROP CONSTRAINT IF EXISTS constraint_offl_us_ses_pk2;
ALTER TABLE IF EXISTS ONLY public.offline_client_session DROP CONSTRAINT IF EXISTS constraint_offl_cl_ses_pk3;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS constraint_migmod;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS constraint_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS constraint_idpm;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS constraint_group_role;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS constraint_group_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS constraint_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS constraint_grntcsnt_pm;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS constraint_grntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent_cl_scope DROP CONSTRAINT IF EXISTS constraint_fgrntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS constraint_fedmapperpm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS constraint_fedmapper_cfg_pm;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS constraint_fb;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS constraint_farsrsps;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS constraint_farsrsp;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS constraint_farsrs;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS constraint_farsrpp;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS constraint_farsrpap;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS constraint_farsrp;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS constraint_farsr;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS constraint_fapmt;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS constraint_f9;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS constraint_f;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS constraint_e;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS constraint_dpc;
ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS constraint_d;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS constraint_cs_pmp_pk;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS constraint_composite_role;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS constraint_c;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS constraint_auth_status_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS constraint_auth_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS constraint_auth_flow_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS constraint_auth_exec_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config_entry DROP CONSTRAINT IF EXISTS constraint_auth_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.admin_event_entity DROP CONSTRAINT IF EXISTS constraint_admin_event_entity;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS constraint_a;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS constraint_92;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS constraint_9;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS constraint_84;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS constraint_81;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS constraint_8;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS constraint_7;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS constraint_5e;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS constraint_5c;
ALTER TABLE IF EXISTS ONLY public.user_session DROP CONSTRAINT IF EXISTS constraint_57;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS constraint_5;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS constraint_4a;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS constraint_40;
ALTER TABLE IF EXISTS ONLY public.event_entity DROP CONSTRAINT IF EXISTS constraint_4;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS constraint_3c;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS constraint_2b;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS constr_realm_supported_locales;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS constr_realm_events_listeners;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS constr_realm_enabl_event_types;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS constr_realm_default_groups;
ALTER TABLE IF EXISTS ONLY public.federated_user DROP CONSTRAINT IF EXISTS constr_federated_user;
ALTER TABLE IF EXISTS ONLY public.fed_user_role_mapping DROP CONSTRAINT IF EXISTS constr_fed_user_role;
ALTER TABLE IF EXISTS ONLY public.fed_user_group_membership DROP CONSTRAINT IF EXISTS constr_fed_user_group;
ALTER TABLE IF EXISTS ONLY public.fed_user_credential DROP CONSTRAINT IF EXISTS constr_fed_user_cred_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent DROP CONSTRAINT IF EXISTS constr_fed_user_consent_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_attribute DROP CONSTRAINT IF EXISTS constr_fed_user_attr_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_required_action DROP CONSTRAINT IF EXISTS constr_fed_required_action;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS constr_component_pk;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS constr_component_config_pk;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS constr_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.broker_link DROP CONSTRAINT IF EXISTS constr_broker_link_pk;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS con_group_id_def_groups;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS cnstr_client_init_acc_pk;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS c_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_auth_flow_bindings DROP CONSTRAINT IF EXISTS c_cli_flow_bind;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS "UK_J3RWUVD56ONTGSUHOGM184WW2-2";
ALTER TABLE IF EXISTS ONLY public.username_login_failure DROP CONSTRAINT IF EXISTS "CONSTRAINT_17-2";
DROP TABLE IF EXISTS public.web_origins;
DROP TABLE IF EXISTS public.username_login_failure;
DROP TABLE IF EXISTS public.user_session_note;
DROP TABLE IF EXISTS public.user_session;
DROP TABLE IF EXISTS public.user_role_mapping;
DROP TABLE IF EXISTS public.user_required_action;
DROP TABLE IF EXISTS public.user_group_membership;
DROP TABLE IF EXISTS public.user_federation_provider;
DROP TABLE IF EXISTS public.user_federation_mapper_config;
DROP TABLE IF EXISTS public.user_federation_mapper;
DROP TABLE IF EXISTS public.user_federation_config;
DROP TABLE IF EXISTS public.user_entity;
DROP TABLE IF EXISTS public.user_consent_client_scope;
DROP TABLE IF EXISTS public.user_consent;
DROP TABLE IF EXISTS public.user_attribute;
DROP TABLE IF EXISTS public.scope_policy;
DROP TABLE IF EXISTS public.scope_mapping;
DROP TABLE IF EXISTS public.role_attribute;
DROP TABLE IF EXISTS public.resource_uris;
DROP TABLE IF EXISTS public.resource_server_scope;
DROP TABLE IF EXISTS public.resource_server_resource;
DROP TABLE IF EXISTS public.resource_server_policy;
DROP TABLE IF EXISTS public.resource_server_perm_ticket;
DROP TABLE IF EXISTS public.resource_server;
DROP TABLE IF EXISTS public.resource_scope;
DROP TABLE IF EXISTS public.resource_policy;
DROP TABLE IF EXISTS public.resource_attribute;
DROP TABLE IF EXISTS public.required_action_provider;
DROP TABLE IF EXISTS public.required_action_config;
DROP TABLE IF EXISTS public.redirect_uris;
DROP TABLE IF EXISTS public.realm_supported_locales;
DROP TABLE IF EXISTS public.realm_smtp_config;
DROP TABLE IF EXISTS public.realm_required_credential;
DROP TABLE IF EXISTS public.realm_localizations;
DROP TABLE IF EXISTS public.realm_events_listeners;
DROP TABLE IF EXISTS public.realm_enabled_event_types;
DROP TABLE IF EXISTS public.realm_default_groups;
DROP TABLE IF EXISTS public.realm_attribute;
DROP TABLE IF EXISTS public.realm;
DROP TABLE IF EXISTS public.protocol_mapper_config;
DROP TABLE IF EXISTS public.protocol_mapper;
DROP TABLE IF EXISTS public.policy_config;
DROP TABLE IF EXISTS public.offline_user_session;
DROP TABLE IF EXISTS public.offline_client_session;
DROP TABLE IF EXISTS public.migration_model;
DROP TABLE IF EXISTS public.keycloak_role;
DROP TABLE IF EXISTS public.keycloak_group;
DROP TABLE IF EXISTS public.idp_mapper_config;
DROP TABLE IF EXISTS public.identity_provider_mapper;
DROP TABLE IF EXISTS public.identity_provider_config;
DROP TABLE IF EXISTS public.identity_provider;
DROP TABLE IF EXISTS public.group_role_mapping;
DROP TABLE IF EXISTS public.group_attribute;
DROP TABLE IF EXISTS public.federated_user;
DROP TABLE IF EXISTS public.federated_identity;
DROP TABLE IF EXISTS public.fed_user_role_mapping;
DROP TABLE IF EXISTS public.fed_user_required_action;
DROP TABLE IF EXISTS public.fed_user_group_membership;
DROP TABLE IF EXISTS public.fed_user_credential;
DROP TABLE IF EXISTS public.fed_user_consent_cl_scope;
DROP TABLE IF EXISTS public.fed_user_consent;
DROP TABLE IF EXISTS public.fed_user_attribute;
DROP TABLE IF EXISTS public.event_entity;
DROP TABLE IF EXISTS public.default_client_scope;
DROP TABLE IF EXISTS public.databasechangeloglock;
DROP TABLE IF EXISTS public.databasechangelog;
DROP TABLE IF EXISTS public.credential;
DROP TABLE IF EXISTS public.composite_role;
DROP TABLE IF EXISTS public.component_config;
DROP TABLE IF EXISTS public.component;
DROP TABLE IF EXISTS public.client_user_session_note;
DROP TABLE IF EXISTS public.client_session_role;
DROP TABLE IF EXISTS public.client_session_prot_mapper;
DROP TABLE IF EXISTS public.client_session_note;
DROP TABLE IF EXISTS public.client_session_auth_status;
DROP TABLE IF EXISTS public.client_session;
DROP TABLE IF EXISTS public.client_scope_role_mapping;
DROP TABLE IF EXISTS public.client_scope_client;
DROP TABLE IF EXISTS public.client_scope_attributes;
DROP TABLE IF EXISTS public.client_scope;
DROP TABLE IF EXISTS public.client_node_registrations;
DROP TABLE IF EXISTS public.client_initial_access;
DROP TABLE IF EXISTS public.client_auth_flow_bindings;
DROP TABLE IF EXISTS public.client_attributes;
DROP TABLE IF EXISTS public.client;
DROP TABLE IF EXISTS public.broker_link;
DROP TABLE IF EXISTS public.authenticator_config_entry;
DROP TABLE IF EXISTS public.authenticator_config;
DROP TABLE IF EXISTS public.authentication_flow;
DROP TABLE IF EXISTS public.authentication_execution;
DROP TABLE IF EXISTS public.associated_policy;
DROP TABLE IF EXISTS public.admin_event_entity;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.admin_event_entity (
                                           id character varying(36) NOT NULL,
                                           admin_event_time bigint,
                                           realm_id character varying(255),
                                           operation_type character varying(255),
                                           auth_realm_id character varying(255),
                                           auth_client_id character varying(255),
                                           auth_user_id character varying(255),
                                           ip_address character varying(255),
                                           resource_path character varying(2550),
                                           representation text,
                                           error character varying(255),
                                           resource_type character varying(64)
);


ALTER TABLE public.admin_event_entity OWNER TO agregator;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.associated_policy (
                                          policy_id character varying(36) NOT NULL,
                                          associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO agregator;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.authentication_execution (
                                                 id character varying(36) NOT NULL,
                                                 alias character varying(255),
                                                 authenticator character varying(36),
                                                 realm_id character varying(36),
                                                 flow_id character varying(36),
                                                 requirement integer,
                                                 priority integer,
                                                 authenticator_flow boolean DEFAULT false NOT NULL,
                                                 auth_flow_id character varying(36),
                                                 auth_config character varying(36)
);


ALTER TABLE public.authentication_execution OWNER TO agregator;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.authentication_flow (
                                            id character varying(36) NOT NULL,
                                            alias character varying(255),
                                            description character varying(255),
                                            realm_id character varying(36),
                                            provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
                                            top_level boolean DEFAULT false NOT NULL,
                                            built_in boolean DEFAULT false NOT NULL
);


ALTER TABLE public.authentication_flow OWNER TO agregator;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.authenticator_config (
                                             id character varying(36) NOT NULL,
                                             alias character varying(255),
                                             realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO agregator;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.authenticator_config_entry (
                                                   authenticator_id character varying(36) NOT NULL,
                                                   value text,
                                                   name character varying(255) NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO agregator;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.broker_link (
                                    identity_provider character varying(255) NOT NULL,
                                    storage_provider_id character varying(255),
                                    realm_id character varying(36) NOT NULL,
                                    broker_user_id character varying(255),
                                    broker_username character varying(255),
                                    token text,
                                    user_id character varying(255) NOT NULL
);


ALTER TABLE public.broker_link OWNER TO agregator;

--
-- Name: client; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client (
                               id character varying(36) NOT NULL,
                               enabled boolean DEFAULT false NOT NULL,
                               full_scope_allowed boolean DEFAULT false NOT NULL,
                               client_id character varying(255),
                               not_before integer,
                               public_client boolean DEFAULT false NOT NULL,
                               secret character varying(255),
                               base_url character varying(255),
                               bearer_only boolean DEFAULT false NOT NULL,
                               management_url character varying(255),
                               surrogate_auth_required boolean DEFAULT false NOT NULL,
                               realm_id character varying(36),
                               protocol character varying(255),
                               node_rereg_timeout integer DEFAULT 0,
                               frontchannel_logout boolean DEFAULT false NOT NULL,
                               consent_required boolean DEFAULT false NOT NULL,
                               name character varying(255),
                               service_accounts_enabled boolean DEFAULT false NOT NULL,
                               client_authenticator_type character varying(255),
                               root_url character varying(255),
                               description character varying(255),
                               registration_token character varying(255),
                               standard_flow_enabled boolean DEFAULT true NOT NULL,
                               implicit_flow_enabled boolean DEFAULT false NOT NULL,
                               direct_access_grants_enabled boolean DEFAULT false NOT NULL,
                               always_display_in_console boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client OWNER TO agregator;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_attributes (
                                          client_id character varying(36) NOT NULL,
                                          name character varying(255) NOT NULL,
                                          value text
);


ALTER TABLE public.client_attributes OWNER TO agregator;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_auth_flow_bindings (
                                                  client_id character varying(36) NOT NULL,
                                                  flow_id character varying(36),
                                                  binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO agregator;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_initial_access (
                                              id character varying(36) NOT NULL,
                                              realm_id character varying(36) NOT NULL,
                                              "timestamp" integer,
                                              expiration integer,
                                              count integer,
                                              remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO agregator;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_node_registrations (
                                                  client_id character varying(36) NOT NULL,
                                                  value integer,
                                                  name character varying(255) NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO agregator;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_scope (
                                     id character varying(36) NOT NULL,
                                     name character varying(255),
                                     realm_id character varying(36),
                                     description character varying(255),
                                     protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO agregator;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_scope_attributes (
                                                scope_id character varying(36) NOT NULL,
                                                value character varying(2048),
                                                name character varying(255) NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO agregator;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_scope_client (
                                            client_id character varying(255) NOT NULL,
                                            scope_id character varying(255) NOT NULL,
                                            default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO agregator;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_scope_role_mapping (
                                                  scope_id character varying(36) NOT NULL,
                                                  role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO agregator;

--
-- Name: client_session; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_session (
                                       id character varying(36) NOT NULL,
                                       client_id character varying(36),
                                       redirect_uri character varying(255),
                                       state character varying(255),
                                       "timestamp" integer,
                                       session_id character varying(36),
                                       auth_method character varying(255),
                                       realm_id character varying(255),
                                       auth_user_id character varying(36),
                                       current_action character varying(36)
);


ALTER TABLE public.client_session OWNER TO agregator;

--
-- Name: client_session_auth_status; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_session_auth_status (
                                                   authenticator character varying(36) NOT NULL,
                                                   status integer,
                                                   client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_auth_status OWNER TO agregator;

--
-- Name: client_session_note; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_session_note (
                                            name character varying(255) NOT NULL,
                                            value character varying(255),
                                            client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_note OWNER TO agregator;

--
-- Name: client_session_prot_mapper; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_session_prot_mapper (
                                                   protocol_mapper_id character varying(36) NOT NULL,
                                                   client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_prot_mapper OWNER TO agregator;

--
-- Name: client_session_role; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_session_role (
                                            role_id character varying(255) NOT NULL,
                                            client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_role OWNER TO agregator;

--
-- Name: client_user_session_note; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.client_user_session_note (
                                                 name character varying(255) NOT NULL,
                                                 value character varying(2048),
                                                 client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_user_session_note OWNER TO agregator;

--
-- Name: component; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.component (
                                  id character varying(36) NOT NULL,
                                  name character varying(255),
                                  parent_id character varying(36),
                                  provider_id character varying(36),
                                  provider_type character varying(255),
                                  realm_id character varying(36),
                                  sub_type character varying(255)
);


ALTER TABLE public.component OWNER TO agregator;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.component_config (
                                         id character varying(36) NOT NULL,
                                         component_id character varying(36) NOT NULL,
                                         name character varying(255) NOT NULL,
                                         value character varying(4000)
);


ALTER TABLE public.component_config OWNER TO agregator;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.composite_role (
                                       composite character varying(36) NOT NULL,
                                       child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO agregator;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.credential (
                                   id character varying(36) NOT NULL,
                                   salt bytea,
                                   type character varying(255),
                                   user_id character varying(36),
                                   created_date bigint,
                                   user_label character varying(255),
                                   secret_data text,
                                   credential_data text,
                                   priority integer
);


ALTER TABLE public.credential OWNER TO agregator;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.databasechangelog (
                                          id character varying(255) NOT NULL,
                                          author character varying(255) NOT NULL,
                                          filename character varying(255) NOT NULL,
                                          dateexecuted timestamp without time zone NOT NULL,
                                          orderexecuted integer NOT NULL,
                                          exectype character varying(10) NOT NULL,
                                          md5sum character varying(35),
                                          description character varying(255),
                                          comments character varying(255),
                                          tag character varying(255),
                                          liquibase character varying(20),
                                          contexts character varying(255),
                                          labels character varying(255),
                                          deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO agregator;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.databasechangeloglock (
                                              id integer NOT NULL,
                                              locked boolean NOT NULL,
                                              lockgranted timestamp without time zone,
                                              lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO agregator;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.default_client_scope (
                                             realm_id character varying(36) NOT NULL,
                                             scope_id character varying(36) NOT NULL,
                                             default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO agregator;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.event_entity (
                                     id character varying(36) NOT NULL,
                                     client_id character varying(255),
                                     details_json character varying(2550),
                                     error character varying(255),
                                     ip_address character varying(255),
                                     realm_id character varying(255),
                                     session_id character varying(255),
                                     event_time bigint,
                                     type character varying(255),
                                     user_id character varying(255)
);


ALTER TABLE public.event_entity OWNER TO agregator;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_attribute (
                                           id character varying(36) NOT NULL,
                                           name character varying(255) NOT NULL,
                                           user_id character varying(255) NOT NULL,
                                           realm_id character varying(36) NOT NULL,
                                           storage_provider_id character varying(36),
                                           value character varying(2024)
);


ALTER TABLE public.fed_user_attribute OWNER TO agregator;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_consent (
                                         id character varying(36) NOT NULL,
                                         client_id character varying(255),
                                         user_id character varying(255) NOT NULL,
                                         realm_id character varying(36) NOT NULL,
                                         storage_provider_id character varying(36),
                                         created_date bigint,
                                         last_updated_date bigint,
                                         client_storage_provider character varying(36),
                                         external_client_id character varying(255)
);


ALTER TABLE public.fed_user_consent OWNER TO agregator;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_consent_cl_scope (
                                                  user_consent_id character varying(36) NOT NULL,
                                                  scope_id character varying(36) NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO agregator;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_credential (
                                            id character varying(36) NOT NULL,
                                            salt bytea,
                                            type character varying(255),
                                            created_date bigint,
                                            user_id character varying(255) NOT NULL,
                                            realm_id character varying(36) NOT NULL,
                                            storage_provider_id character varying(36),
                                            user_label character varying(255),
                                            secret_data text,
                                            credential_data text,
                                            priority integer
);


ALTER TABLE public.fed_user_credential OWNER TO agregator;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_group_membership (
                                                  group_id character varying(36) NOT NULL,
                                                  user_id character varying(255) NOT NULL,
                                                  realm_id character varying(36) NOT NULL,
                                                  storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO agregator;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_required_action (
                                                 required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
                                                 user_id character varying(255) NOT NULL,
                                                 realm_id character varying(36) NOT NULL,
                                                 storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO agregator;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.fed_user_role_mapping (
                                              role_id character varying(36) NOT NULL,
                                              user_id character varying(255) NOT NULL,
                                              realm_id character varying(36) NOT NULL,
                                              storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO agregator;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.federated_identity (
                                           identity_provider character varying(255) NOT NULL,
                                           realm_id character varying(36),
                                           federated_user_id character varying(255),
                                           federated_username character varying(255),
                                           token text,
                                           user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO agregator;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.federated_user (
                                       id character varying(255) NOT NULL,
                                       storage_provider_id character varying(255),
                                       realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO agregator;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.group_attribute (
                                        id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
                                        name character varying(255) NOT NULL,
                                        value character varying(255),
                                        group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO agregator;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.group_role_mapping (
                                           role_id character varying(36) NOT NULL,
                                           group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO agregator;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.identity_provider (
                                          internal_id character varying(36) NOT NULL,
                                          enabled boolean DEFAULT false NOT NULL,
                                          provider_alias character varying(255),
                                          provider_id character varying(255),
                                          store_token boolean DEFAULT false NOT NULL,
                                          authenticate_by_default boolean DEFAULT false NOT NULL,
                                          realm_id character varying(36),
                                          add_token_role boolean DEFAULT true NOT NULL,
                                          trust_email boolean DEFAULT false NOT NULL,
                                          first_broker_login_flow_id character varying(36),
                                          post_broker_login_flow_id character varying(36),
                                          provider_display_name character varying(255),
                                          link_only boolean DEFAULT false NOT NULL
);


ALTER TABLE public.identity_provider OWNER TO agregator;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.identity_provider_config (
                                                 identity_provider_id character varying(36) NOT NULL,
                                                 value text,
                                                 name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO agregator;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.identity_provider_mapper (
                                                 id character varying(36) NOT NULL,
                                                 name character varying(255) NOT NULL,
                                                 idp_alias character varying(255) NOT NULL,
                                                 idp_mapper_name character varying(255) NOT NULL,
                                                 realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO agregator;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.idp_mapper_config (
                                          idp_mapper_id character varying(36) NOT NULL,
                                          value text,
                                          name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO agregator;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.keycloak_group (
                                       id character varying(36) NOT NULL,
                                       name character varying(255),
                                       parent_group character varying(36) NOT NULL,
                                       realm_id character varying(36)
);


ALTER TABLE public.keycloak_group OWNER TO agregator;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.keycloak_role (
                                      id character varying(36) NOT NULL,
                                      client_realm_constraint character varying(255),
                                      client_role boolean DEFAULT false NOT NULL,
                                      description character varying(255),
                                      name character varying(255),
                                      realm_id character varying(255),
                                      client character varying(36),
                                      realm character varying(36)
);


ALTER TABLE public.keycloak_role OWNER TO agregator;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.migration_model (
                                        id character varying(36) NOT NULL,
                                        version character varying(36),
                                        update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO agregator;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.offline_client_session (
                                               user_session_id character varying(36) NOT NULL,
                                               client_id character varying(255) NOT NULL,
                                               offline_flag character varying(4) NOT NULL,
                                               "timestamp" integer,
                                               data text,
                                               client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
                                               external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL
);


ALTER TABLE public.offline_client_session OWNER TO agregator;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.offline_user_session (
                                             user_session_id character varying(36) NOT NULL,
                                             user_id character varying(255) NOT NULL,
                                             realm_id character varying(36) NOT NULL,
                                             created_on integer NOT NULL,
                                             offline_flag character varying(4) NOT NULL,
                                             data text,
                                             last_session_refresh integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.offline_user_session OWNER TO agregator;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.policy_config (
                                      policy_id character varying(36) NOT NULL,
                                      name character varying(255) NOT NULL,
                                      value text
);


ALTER TABLE public.policy_config OWNER TO agregator;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.protocol_mapper (
                                        id character varying(36) NOT NULL,
                                        name character varying(255) NOT NULL,
                                        protocol character varying(255) NOT NULL,
                                        protocol_mapper_name character varying(255) NOT NULL,
                                        client_id character varying(36),
                                        client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO agregator;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.protocol_mapper_config (
                                               protocol_mapper_id character varying(36) NOT NULL,
                                               value text,
                                               name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO agregator;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm (
                              id character varying(36) NOT NULL,
                              access_code_lifespan integer,
                              user_action_lifespan integer,
                              access_token_lifespan integer,
                              account_theme character varying(255),
                              admin_theme character varying(255),
                              email_theme character varying(255),
                              enabled boolean DEFAULT false NOT NULL,
                              events_enabled boolean DEFAULT false NOT NULL,
                              events_expiration bigint,
                              login_theme character varying(255),
                              name character varying(255),
                              not_before integer,
                              password_policy character varying(2550),
                              registration_allowed boolean DEFAULT false NOT NULL,
                              remember_me boolean DEFAULT false NOT NULL,
                              reset_password_allowed boolean DEFAULT false NOT NULL,
                              social boolean DEFAULT false NOT NULL,
                              ssl_required character varying(255),
                              sso_idle_timeout integer,
                              sso_max_lifespan integer,
                              update_profile_on_soc_login boolean DEFAULT false NOT NULL,
                              verify_email boolean DEFAULT false NOT NULL,
                              master_admin_client character varying(36),
                              login_lifespan integer,
                              internationalization_enabled boolean DEFAULT false NOT NULL,
                              default_locale character varying(255),
                              reg_email_as_username boolean DEFAULT false NOT NULL,
                              admin_events_enabled boolean DEFAULT false NOT NULL,
                              admin_events_details_enabled boolean DEFAULT false NOT NULL,
                              edit_username_allowed boolean DEFAULT false NOT NULL,
                              otp_policy_counter integer DEFAULT 0,
                              otp_policy_window integer DEFAULT 1,
                              otp_policy_period integer DEFAULT 30,
                              otp_policy_digits integer DEFAULT 6,
                              otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
                              otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
                              browser_flow character varying(36),
                              registration_flow character varying(36),
                              direct_grant_flow character varying(36),
                              reset_credentials_flow character varying(36),
                              client_auth_flow character varying(36),
                              offline_session_idle_timeout integer DEFAULT 0,
                              revoke_refresh_token boolean DEFAULT false NOT NULL,
                              access_token_life_implicit integer DEFAULT 0,
                              login_with_email_allowed boolean DEFAULT true NOT NULL,
                              duplicate_emails_allowed boolean DEFAULT false NOT NULL,
                              docker_auth_flow character varying(36),
                              refresh_token_max_reuse integer DEFAULT 0,
                              allow_user_managed_access boolean DEFAULT false NOT NULL,
                              sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
                              sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
                              default_role character varying(255)
);


ALTER TABLE public.realm OWNER TO agregator;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_attribute (
                                        name character varying(255) NOT NULL,
                                        realm_id character varying(36) NOT NULL,
                                        value text
);


ALTER TABLE public.realm_attribute OWNER TO agregator;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_default_groups (
                                             realm_id character varying(36) NOT NULL,
                                             group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO agregator;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_enabled_event_types (
                                                  realm_id character varying(36) NOT NULL,
                                                  value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO agregator;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_events_listeners (
                                               realm_id character varying(36) NOT NULL,
                                               value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO agregator;

--
-- Name: realm_localizations; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_localizations (
                                            realm_id character varying(255) NOT NULL,
                                            locale character varying(255) NOT NULL,
                                            texts text NOT NULL
);


ALTER TABLE public.realm_localizations OWNER TO agregator;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_required_credential (
                                                  type character varying(255) NOT NULL,
                                                  form_label character varying(255),
                                                  input boolean DEFAULT false NOT NULL,
                                                  secret boolean DEFAULT false NOT NULL,
                                                  realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO agregator;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_smtp_config (
                                          realm_id character varying(36) NOT NULL,
                                          value character varying(255),
                                          name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO agregator;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.realm_supported_locales (
                                                realm_id character varying(36) NOT NULL,
                                                value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO agregator;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.redirect_uris (
                                      client_id character varying(36) NOT NULL,
                                      value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO agregator;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.required_action_config (
                                               required_action_id character varying(36) NOT NULL,
                                               value text,
                                               name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO agregator;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.required_action_provider (
                                                 id character varying(36) NOT NULL,
                                                 alias character varying(255),
                                                 name character varying(255),
                                                 realm_id character varying(36),
                                                 enabled boolean DEFAULT false NOT NULL,
                                                 default_action boolean DEFAULT false NOT NULL,
                                                 provider_id character varying(255),
                                                 priority integer
);


ALTER TABLE public.required_action_provider OWNER TO agregator;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_attribute (
                                           id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
                                           name character varying(255) NOT NULL,
                                           value character varying(255),
                                           resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO agregator;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_policy (
                                        resource_id character varying(36) NOT NULL,
                                        policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO agregator;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_scope (
                                       resource_id character varying(36) NOT NULL,
                                       scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO agregator;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_server (
                                        id character varying(36) NOT NULL,
                                        allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
                                        policy_enforce_mode character varying(15) NOT NULL,
                                        decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO agregator;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_server_perm_ticket (
                                                    id character varying(36) NOT NULL,
                                                    owner character varying(255) NOT NULL,
                                                    requester character varying(255) NOT NULL,
                                                    created_timestamp bigint NOT NULL,
                                                    granted_timestamp bigint,
                                                    resource_id character varying(36) NOT NULL,
                                                    scope_id character varying(36),
                                                    resource_server_id character varying(36) NOT NULL,
                                                    policy_id character varying(36)
);


ALTER TABLE public.resource_server_perm_ticket OWNER TO agregator;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_server_policy (
                                               id character varying(36) NOT NULL,
                                               name character varying(255) NOT NULL,
                                               description character varying(255),
                                               type character varying(255) NOT NULL,
                                               decision_strategy character varying(20),
                                               logic character varying(20),
                                               resource_server_id character varying(36) NOT NULL,
                                               owner character varying(255)
);


ALTER TABLE public.resource_server_policy OWNER TO agregator;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_server_resource (
                                                 id character varying(36) NOT NULL,
                                                 name character varying(255) NOT NULL,
                                                 type character varying(255),
                                                 icon_uri character varying(255),
                                                 owner character varying(255) NOT NULL,
                                                 resource_server_id character varying(36) NOT NULL,
                                                 owner_managed_access boolean DEFAULT false NOT NULL,
                                                 display_name character varying(255)
);


ALTER TABLE public.resource_server_resource OWNER TO agregator;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_server_scope (
                                              id character varying(36) NOT NULL,
                                              name character varying(255) NOT NULL,
                                              icon_uri character varying(255),
                                              resource_server_id character varying(36) NOT NULL,
                                              display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO agregator;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.resource_uris (
                                      resource_id character varying(36) NOT NULL,
                                      value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO agregator;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.role_attribute (
                                       id character varying(36) NOT NULL,
                                       role_id character varying(36) NOT NULL,
                                       name character varying(255) NOT NULL,
                                       value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO agregator;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.scope_mapping (
                                      client_id character varying(36) NOT NULL,
                                      role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO agregator;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.scope_policy (
                                     scope_id character varying(36) NOT NULL,
                                     policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO agregator;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_attribute (
                                       name character varying(255) NOT NULL,
                                       value character varying(255),
                                       user_id character varying(36) NOT NULL,
                                       id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL
);


ALTER TABLE public.user_attribute OWNER TO agregator;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_consent (
                                     id character varying(36) NOT NULL,
                                     client_id character varying(255),
                                     user_id character varying(36) NOT NULL,
                                     created_date bigint,
                                     last_updated_date bigint,
                                     client_storage_provider character varying(36),
                                     external_client_id character varying(255)
);


ALTER TABLE public.user_consent OWNER TO agregator;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_consent_client_scope (
                                                  user_consent_id character varying(36) NOT NULL,
                                                  scope_id character varying(36) NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO agregator;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_entity (
                                    id character varying(36) NOT NULL,
                                    email character varying(255),
                                    email_constraint character varying(255),
                                    email_verified boolean DEFAULT false NOT NULL,
                                    enabled boolean DEFAULT false NOT NULL,
                                    federation_link character varying(255),
                                    first_name character varying(255),
                                    last_name character varying(255),
                                    realm_id character varying(255),
                                    username character varying(255),
                                    created_timestamp bigint,
                                    service_account_client_link character varying(255),
                                    not_before integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.user_entity OWNER TO agregator;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_federation_config (
                                               user_federation_provider_id character varying(36) NOT NULL,
                                               value character varying(255),
                                               name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO agregator;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_federation_mapper (
                                               id character varying(36) NOT NULL,
                                               name character varying(255) NOT NULL,
                                               federation_provider_id character varying(36) NOT NULL,
                                               federation_mapper_type character varying(255) NOT NULL,
                                               realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO agregator;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_federation_mapper_config (
                                                      user_federation_mapper_id character varying(36) NOT NULL,
                                                      value character varying(255),
                                                      name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO agregator;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_federation_provider (
                                                 id character varying(36) NOT NULL,
                                                 changed_sync_period integer,
                                                 display_name character varying(255),
                                                 full_sync_period integer,
                                                 last_sync integer,
                                                 priority integer,
                                                 provider_name character varying(255),
                                                 realm_id character varying(36)
);


ALTER TABLE public.user_federation_provider OWNER TO agregator;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_group_membership (
                                              group_id character varying(36) NOT NULL,
                                              user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO agregator;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_required_action (
                                             user_id character varying(36) NOT NULL,
                                             required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO agregator;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_role_mapping (
                                          role_id character varying(255) NOT NULL,
                                          user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO agregator;

--
-- Name: user_session; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_session (
                                     id character varying(36) NOT NULL,
                                     auth_method character varying(255),
                                     ip_address character varying(255),
                                     last_session_refresh integer,
                                     login_username character varying(255),
                                     realm_id character varying(255),
                                     remember_me boolean DEFAULT false NOT NULL,
                                     started integer,
                                     user_id character varying(255),
                                     user_session_state integer,
                                     broker_session_id character varying(255),
                                     broker_user_id character varying(255)
);


ALTER TABLE public.user_session OWNER TO agregator;

--
-- Name: user_session_note; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.user_session_note (
                                          user_session character varying(36) NOT NULL,
                                          name character varying(255) NOT NULL,
                                          value character varying(2048)
);


ALTER TABLE public.user_session_note OWNER TO agregator;

--
-- Name: username_login_failure; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.username_login_failure (
                                               realm_id character varying(36) NOT NULL,
                                               username character varying(255) NOT NULL,
                                               failed_login_not_before integer,
                                               last_failure bigint,
                                               last_ip_failure character varying(255),
                                               num_failures integer
);


ALTER TABLE public.username_login_failure OWNER TO agregator;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: agregator
--

CREATE TABLE public.web_origins (
                                    client_id character varying(36) NOT NULL,
                                    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO agregator;

--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type) FROM stdin;
\.


--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
\.


--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
5916910e-7295-4fd2-a4c8-990dd8cf0e46	\N	auth-cookie	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e6448a96-84cc-4575-a1b8-a15f88eee88c	2	10	f	\N	\N
85f5f2dc-3f52-40c0-9fef-da999654c55b	\N	auth-spnego	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e6448a96-84cc-4575-a1b8-a15f88eee88c	3	20	f	\N	\N
16d89889-cb81-4372-92ba-30de364f9cd4	\N	identity-provider-redirector	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e6448a96-84cc-4575-a1b8-a15f88eee88c	2	25	f	\N	\N
86b0e616-3811-4307-ac70-62be54a98163	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e6448a96-84cc-4575-a1b8-a15f88eee88c	2	30	t	f44869ed-719d-47f0-b069-23814344c33d	\N
296a7b43-d586-49d5-acb9-1dba1a03604a	\N	auth-username-password-form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f44869ed-719d-47f0-b069-23814344c33d	0	10	f	\N	\N
e677c9e7-d039-4681-a85f-6c97acb485ba	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f44869ed-719d-47f0-b069-23814344c33d	1	20	t	1bb29209-12ca-45eb-8ef4-e79c442db7f7	\N
77c45cb5-4d7c-42dc-8504-74c05c28583e	\N	conditional-user-configured	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1bb29209-12ca-45eb-8ef4-e79c442db7f7	0	10	f	\N	\N
00273a44-df38-4583-a4fb-bb6e8dec90f2	\N	auth-otp-form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1bb29209-12ca-45eb-8ef4-e79c442db7f7	0	20	f	\N	\N
4d3898a2-f0e2-4079-8614-9638c67ad811	\N	direct-grant-validate-username	7279654e-2ddf-47fc-8f7d-a9c014f639c6	bac6b9b2-cbe9-451f-ba0e-621a73cb4646	0	10	f	\N	\N
a872e302-d1d3-4f84-886c-24d879ac635e	\N	direct-grant-validate-password	7279654e-2ddf-47fc-8f7d-a9c014f639c6	bac6b9b2-cbe9-451f-ba0e-621a73cb4646	0	20	f	\N	\N
0718bbc6-93a0-48c6-892a-38f048a23f88	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	bac6b9b2-cbe9-451f-ba0e-621a73cb4646	1	30	t	409abaf3-2574-4bd3-a0e5-8f6bbade53c8	\N
ade7f792-9c69-456f-b723-b6e37f9c8829	\N	conditional-user-configured	7279654e-2ddf-47fc-8f7d-a9c014f639c6	409abaf3-2574-4bd3-a0e5-8f6bbade53c8	0	10	f	\N	\N
0ba4070f-78ee-448a-9078-5c35517e573c	\N	direct-grant-validate-otp	7279654e-2ddf-47fc-8f7d-a9c014f639c6	409abaf3-2574-4bd3-a0e5-8f6bbade53c8	0	20	f	\N	\N
7d082284-1092-4c72-b8bb-d994d7bd1681	\N	registration-page-form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e5ae1571-1967-4c75-bda6-3919ed9b43b2	0	10	t	c1f256f8-eb9c-47c3-b277-200cab961245	\N
009b1580-5764-43d6-b91a-6cb1d7b681ec	\N	registration-user-creation	7279654e-2ddf-47fc-8f7d-a9c014f639c6	c1f256f8-eb9c-47c3-b277-200cab961245	0	20	f	\N	\N
87162887-111b-4eb6-bc0d-c7f2e0f12080	\N	registration-profile-action	7279654e-2ddf-47fc-8f7d-a9c014f639c6	c1f256f8-eb9c-47c3-b277-200cab961245	0	40	f	\N	\N
6985babb-aafd-41d8-b1d4-d2b476cea823	\N	registration-password-action	7279654e-2ddf-47fc-8f7d-a9c014f639c6	c1f256f8-eb9c-47c3-b277-200cab961245	0	50	f	\N	\N
e97d321a-4f13-4db4-8d68-b9566011db59	\N	registration-recaptcha-action	7279654e-2ddf-47fc-8f7d-a9c014f639c6	c1f256f8-eb9c-47c3-b277-200cab961245	3	60	f	\N	\N
8f480208-1f79-430e-a463-ee24b3d32a46	\N	reset-credentials-choose-user	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7a9b6964-a645-4ffd-ae49-f27b7869aff3	0	10	f	\N	\N
f89509a3-3d57-42d9-aaa9-3510d7378682	\N	reset-credential-email	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7a9b6964-a645-4ffd-ae49-f27b7869aff3	0	20	f	\N	\N
89da5613-2fc5-414f-a272-a02941d6f233	\N	reset-password	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7a9b6964-a645-4ffd-ae49-f27b7869aff3	0	30	f	\N	\N
abc558f2-8b3a-4585-98de-e8d18d50df5b	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7a9b6964-a645-4ffd-ae49-f27b7869aff3	1	40	t	8dd345b5-84be-4a7f-8d0a-7ba975800e0c	\N
4258b4c2-f43f-4fbe-aeb1-8459dfe08a00	\N	conditional-user-configured	7279654e-2ddf-47fc-8f7d-a9c014f639c6	8dd345b5-84be-4a7f-8d0a-7ba975800e0c	0	10	f	\N	\N
e37425ef-41db-4e43-afc2-bc2a7dfcc5f2	\N	reset-otp	7279654e-2ddf-47fc-8f7d-a9c014f639c6	8dd345b5-84be-4a7f-8d0a-7ba975800e0c	0	20	f	\N	\N
1ae4c0eb-3691-4f66-a520-a62038b2090e	\N	client-secret	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7890f910-0130-42cd-89e7-e1ba3c453f34	2	10	f	\N	\N
1eb4d1d4-b982-4669-acd6-a7db65cc211c	\N	client-jwt	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7890f910-0130-42cd-89e7-e1ba3c453f34	2	20	f	\N	\N
e6e66608-b0b4-414c-8963-21366a0c170b	\N	client-secret-jwt	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7890f910-0130-42cd-89e7-e1ba3c453f34	2	30	f	\N	\N
34919c56-8080-48cd-8e9d-14b083b53799	\N	client-x509	7279654e-2ddf-47fc-8f7d-a9c014f639c6	7890f910-0130-42cd-89e7-e1ba3c453f34	2	40	f	\N	\N
a8883567-6ed9-4c8a-9824-326976381cda	\N	idp-review-profile	7279654e-2ddf-47fc-8f7d-a9c014f639c6	95bb04f0-2942-4f4f-b01e-45fce728c7f0	0	10	f	\N	8cf02c10-7a53-48b8-a56b-c62e51eaab52
e2c0a9a3-e769-4f57-8288-f1d9768d6023	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	95bb04f0-2942-4f4f-b01e-45fce728c7f0	0	20	t	27e09e21-78a1-4010-b036-b1236423da94	\N
1cff1fc5-fec2-4a2f-8eed-bbc88c49f984	\N	idp-create-user-if-unique	7279654e-2ddf-47fc-8f7d-a9c014f639c6	27e09e21-78a1-4010-b036-b1236423da94	2	10	f	\N	70b4b426-7b98-455d-b156-a01d6a323cf4
50263c09-944e-45eb-818d-cbcd8c42b288	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	27e09e21-78a1-4010-b036-b1236423da94	2	20	t	1a92de12-4140-438c-bd38-44a8604c9c12	\N
be73011d-79ea-4a63-8c71-6d58479c40f6	\N	idp-confirm-link	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1a92de12-4140-438c-bd38-44a8604c9c12	0	10	f	\N	\N
19393e54-be8c-444c-8dba-d12b7114bcff	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1a92de12-4140-438c-bd38-44a8604c9c12	0	20	t	e7c17c7b-ef76-414f-b6d8-ceb6fee26cd8	\N
10a45951-0299-44f7-af2a-0bbbb9221e4c	\N	idp-email-verification	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e7c17c7b-ef76-414f-b6d8-ceb6fee26cd8	2	10	f	\N	\N
b1a448c0-2675-4138-86e6-edc269af2640	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	e7c17c7b-ef76-414f-b6d8-ceb6fee26cd8	2	20	t	97ee26ec-9e3d-4c6a-8c14-b1d880f02df5	\N
6034e66c-19b9-4d80-8df0-718ed9272343	\N	idp-username-password-form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	97ee26ec-9e3d-4c6a-8c14-b1d880f02df5	0	10	f	\N	\N
317d1f29-18f2-4f12-a2b5-e751edf07d2b	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	97ee26ec-9e3d-4c6a-8c14-b1d880f02df5	1	20	t	5602f5dc-c5ae-473e-985f-c2cf3a1caff9	\N
b6d0fcd9-f58c-4f5f-90b9-21789b69725f	\N	conditional-user-configured	7279654e-2ddf-47fc-8f7d-a9c014f639c6	5602f5dc-c5ae-473e-985f-c2cf3a1caff9	0	10	f	\N	\N
7b5099a6-1600-4a0e-a136-827564e42be3	\N	auth-otp-form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	5602f5dc-c5ae-473e-985f-c2cf3a1caff9	0	20	f	\N	\N
5972c373-212b-4c40-9b59-2475e32fc55a	\N	http-basic-authenticator	7279654e-2ddf-47fc-8f7d-a9c014f639c6	0182604f-0a3e-402b-bcfc-7eabc689bb98	0	10	f	\N	\N
c12751ee-d807-4b05-8d03-3d576236a444	\N	docker-http-basic-authenticator	7279654e-2ddf-47fc-8f7d-a9c014f639c6	255366bb-7749-4fe3-a6cb-ab3b585163e0	0	10	f	\N	\N
86d46f9a-eb4b-4fce-b09f-e655ef1bf663	\N	no-cookie-redirect	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f881bdfd-0944-4670-8962-ddbe4d20affc	0	10	f	\N	\N
375b6000-7d1e-4ced-8e7d-e29711e71767	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f881bdfd-0944-4670-8962-ddbe4d20affc	0	20	t	d1c7f308-344b-4782-8daa-32f80aba29fa	\N
2505fb70-5833-4a25-8010-0cc9934dcc13	\N	basic-auth	7279654e-2ddf-47fc-8f7d-a9c014f639c6	d1c7f308-344b-4782-8daa-32f80aba29fa	0	10	f	\N	\N
211ee16e-e2d8-4cfb-a511-96946d292b8f	\N	basic-auth-otp	7279654e-2ddf-47fc-8f7d-a9c014f639c6	d1c7f308-344b-4782-8daa-32f80aba29fa	3	20	f	\N	\N
6e793ada-aefe-407a-b883-c08ccb631cf0	\N	auth-spnego	7279654e-2ddf-47fc-8f7d-a9c014f639c6	d1c7f308-344b-4782-8daa-32f80aba29fa	3	30	f	\N	\N
613e14b9-6abe-4cec-8ac2-b069d55b50ea	\N	auth-cookie	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	2	10	f	\N	\N
bb8d0f06-c260-4a5e-b260-ab93017def2d	\N	auth-spnego	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	3	20	f	\N	\N
76880847-103e-43b3-98fd-7188bfeaf336	\N	identity-provider-redirector	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	2	25	f	\N	\N
233d8cf0-a49e-4412-b91c-94bcd3bc3345	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	2	30	t	e3b5154a-6877-425a-9420-65d3c05af5c3	\N
f2d800cc-6cf4-443c-8520-7248c47476dd	\N	auth-username-password-form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	e3b5154a-6877-425a-9420-65d3c05af5c3	0	10	f	\N	\N
49f2e3a2-51ed-418e-a0d6-cc1ebfd0cae3	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	e3b5154a-6877-425a-9420-65d3c05af5c3	1	20	t	462b23c8-9082-4be3-b25f-6d029232e8e0	\N
354e48f1-bfc4-4196-bcd6-258f3a716ab7	\N	conditional-user-configured	6abe3626-afce-40f0-b6c4-b9d31c2c882c	462b23c8-9082-4be3-b25f-6d029232e8e0	0	10	f	\N	\N
74eac0ea-14f0-4d72-bceb-27906a3bbdff	\N	auth-otp-form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	462b23c8-9082-4be3-b25f-6d029232e8e0	0	20	f	\N	\N
23d88a9d-4810-4528-99da-b26c02b98c2b	\N	direct-grant-validate-username	6abe3626-afce-40f0-b6c4-b9d31c2c882c	583c0aeb-0f26-49a9-a08f-9221a6c67d49	0	10	f	\N	\N
2e51ef2e-9931-4699-a55e-48f97f0b1f97	\N	direct-grant-validate-password	6abe3626-afce-40f0-b6c4-b9d31c2c882c	583c0aeb-0f26-49a9-a08f-9221a6c67d49	0	20	f	\N	\N
b941e9f7-e35a-4993-8ade-d8062c8f2c66	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	583c0aeb-0f26-49a9-a08f-9221a6c67d49	1	30	t	6131285c-0eeb-4e0b-b24a-05233fcfd03e	\N
ef58cafe-cba5-4bc0-a438-743088ac2f1b	\N	conditional-user-configured	6abe3626-afce-40f0-b6c4-b9d31c2c882c	6131285c-0eeb-4e0b-b24a-05233fcfd03e	0	10	f	\N	\N
77ad6bc3-efea-48cf-aec7-879a0091d594	\N	direct-grant-validate-otp	6abe3626-afce-40f0-b6c4-b9d31c2c882c	6131285c-0eeb-4e0b-b24a-05233fcfd03e	0	20	f	\N	\N
04d8d71f-30ef-439b-968c-69336a7650be	\N	registration-page-form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	8a24c36e-d3f0-428a-ba16-aa24622bd1d5	0	10	t	148e966f-136e-442f-940c-5c93e21d39d4	\N
7898071d-edc8-401b-9f44-80dbc814d1aa	\N	registration-user-creation	6abe3626-afce-40f0-b6c4-b9d31c2c882c	148e966f-136e-442f-940c-5c93e21d39d4	0	20	f	\N	\N
a881d91f-6fbf-40e8-b50f-7aafc28b8e5f	\N	registration-profile-action	6abe3626-afce-40f0-b6c4-b9d31c2c882c	148e966f-136e-442f-940c-5c93e21d39d4	0	40	f	\N	\N
df2fdf27-adee-4c7b-a2d5-556514606b45	\N	registration-password-action	6abe3626-afce-40f0-b6c4-b9d31c2c882c	148e966f-136e-442f-940c-5c93e21d39d4	0	50	f	\N	\N
d090a055-bbb5-49ca-93e7-a42005bdd60b	\N	registration-recaptcha-action	6abe3626-afce-40f0-b6c4-b9d31c2c882c	148e966f-136e-442f-940c-5c93e21d39d4	3	60	f	\N	\N
3353e413-081f-49d8-a7e1-b464b3bc7dfa	\N	reset-credentials-choose-user	6abe3626-afce-40f0-b6c4-b9d31c2c882c	57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	0	10	f	\N	\N
08f9ffdb-ab8f-4af0-9ee2-0257013f9110	\N	reset-credential-email	6abe3626-afce-40f0-b6c4-b9d31c2c882c	57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	0	20	f	\N	\N
1c96eb4c-883a-4d55-95f2-bcb89cb85e64	\N	reset-password	6abe3626-afce-40f0-b6c4-b9d31c2c882c	57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	0	30	f	\N	\N
8e30dce1-1626-40be-a505-c2ad06a6b65d	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	1	40	t	bd1a2ec8-fbee-4867-a40d-c04549136db0	\N
b20940a6-9e8c-4656-8e8d-266c3a2357c6	\N	conditional-user-configured	6abe3626-afce-40f0-b6c4-b9d31c2c882c	bd1a2ec8-fbee-4867-a40d-c04549136db0	0	10	f	\N	\N
f1b6a169-5cc0-4683-bdca-5f0115cc3cc4	\N	reset-otp	6abe3626-afce-40f0-b6c4-b9d31c2c882c	bd1a2ec8-fbee-4867-a40d-c04549136db0	0	20	f	\N	\N
d89e29ba-cf92-4ede-88d2-794fcb737549	\N	client-secret	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f69f5490-4cbb-44ff-9844-1fb015dc01fd	2	10	f	\N	\N
eff64e5c-e7c9-4073-8680-8a96b6d65512	\N	client-jwt	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f69f5490-4cbb-44ff-9844-1fb015dc01fd	2	20	f	\N	\N
339e44b9-1b78-42e2-82db-81a7b3389390	\N	client-secret-jwt	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f69f5490-4cbb-44ff-9844-1fb015dc01fd	2	30	f	\N	\N
6c876397-c6c2-4c88-a114-b5cdb23d638c	\N	client-x509	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f69f5490-4cbb-44ff-9844-1fb015dc01fd	2	40	f	\N	\N
18e33cc4-7b3c-489b-9c17-9f353d5c1614	\N	idp-review-profile	6abe3626-afce-40f0-b6c4-b9d31c2c882c	68488754-5ba1-479e-a348-6029d08e2cae	0	10	f	\N	ba031b93-45e9-496c-a687-b7c8e8f0a513
dd7263e3-11a6-472e-999b-a276bb6b6f12	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	68488754-5ba1-479e-a348-6029d08e2cae	0	20	t	71030266-d6e7-46bd-8ec3-949a14d70069	\N
755af9bd-6493-4e52-b9a4-f1c914ee7dcc	\N	idp-create-user-if-unique	6abe3626-afce-40f0-b6c4-b9d31c2c882c	71030266-d6e7-46bd-8ec3-949a14d70069	2	10	f	\N	bf293363-a4bf-4991-b8f7-56ccc14ccc39
c881c0a2-e5ce-47d5-85f9-edc2a3a657b2	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	71030266-d6e7-46bd-8ec3-949a14d70069	2	20	t	cfdc927b-3646-41ce-8b8d-63f337c46862	\N
47e0988b-ecf5-433c-8adf-74b236602368	\N	idp-confirm-link	6abe3626-afce-40f0-b6c4-b9d31c2c882c	cfdc927b-3646-41ce-8b8d-63f337c46862	0	10	f	\N	\N
48c4c069-4622-45c2-9e48-3bb29d380551	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	cfdc927b-3646-41ce-8b8d-63f337c46862	0	20	t	86adb27c-9bed-417f-b16d-9c2684d1f1ca	\N
b67e25ad-317e-4ac4-a324-8545e08cebd0	\N	idp-email-verification	6abe3626-afce-40f0-b6c4-b9d31c2c882c	86adb27c-9bed-417f-b16d-9c2684d1f1ca	2	10	f	\N	\N
07628a0c-1ef7-4ec6-b611-4a50c0387cc6	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	86adb27c-9bed-417f-b16d-9c2684d1f1ca	2	20	t	9d2a0376-c2de-4dbb-9466-969122ee3b5e	\N
9e768867-6b4a-4406-86ff-f5c974058752	\N	idp-username-password-form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	9d2a0376-c2de-4dbb-9466-969122ee3b5e	0	10	f	\N	\N
4d5b8ebe-c9b2-4cb6-9e15-dbbbbb2b186b	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	9d2a0376-c2de-4dbb-9466-969122ee3b5e	1	20	t	7fcf41d1-c441-4a76-b4fd-c51e581335fd	\N
ee94048d-9b05-43b0-94e5-2a667e782488	\N	conditional-user-configured	6abe3626-afce-40f0-b6c4-b9d31c2c882c	7fcf41d1-c441-4a76-b4fd-c51e581335fd	0	10	f	\N	\N
61c1ce41-ec56-4a3d-abf6-8dcfb4d8d31a	\N	auth-otp-form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	7fcf41d1-c441-4a76-b4fd-c51e581335fd	0	20	f	\N	\N
9934c93b-1df0-48cf-afa2-11d150887fb9	\N	http-basic-authenticator	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0b427431-4201-4cc2-a07d-09794f28220e	0	10	f	\N	\N
a9540a69-ef57-4a16-8de4-5253ac9ced19	\N	docker-http-basic-authenticator	6abe3626-afce-40f0-b6c4-b9d31c2c882c	9cbd5892-7ae0-4d66-8846-229ad0487f17	0	10	f	\N	\N
d12159f5-b7de-482e-98d9-17d0ac7f072c	\N	no-cookie-redirect	6abe3626-afce-40f0-b6c4-b9d31c2c882c	e8cb2215-9234-44b1-9ec5-7731dada03e0	0	10	f	\N	\N
22140242-3836-403f-b7ab-2264ec0eda5f	\N	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	e8cb2215-9234-44b1-9ec5-7731dada03e0	0	20	t	cbb84905-313f-458e-8c9b-5d7398fd7b62	\N
b5adaf21-577e-492a-a21e-f40822f157ce	\N	basic-auth	6abe3626-afce-40f0-b6c4-b9d31c2c882c	cbb84905-313f-458e-8c9b-5d7398fd7b62	0	10	f	\N	\N
95c753e7-b9cd-41a2-934d-6b5fbf0ed748	\N	basic-auth-otp	6abe3626-afce-40f0-b6c4-b9d31c2c882c	cbb84905-313f-458e-8c9b-5d7398fd7b62	3	20	f	\N	\N
fdc31d1a-a181-4888-b2d8-3fa60e94508f	\N	auth-spnego	6abe3626-afce-40f0-b6c4-b9d31c2c882c	cbb84905-313f-458e-8c9b-5d7398fd7b62	3	30	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
e6448a96-84cc-4575-a1b8-a15f88eee88c	browser	browser based authentication	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
f44869ed-719d-47f0-b069-23814344c33d	forms	Username, password, otp and other auth forms.	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
1bb29209-12ca-45eb-8ef4-e79c442db7f7	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
bac6b9b2-cbe9-451f-ba0e-621a73cb4646	direct grant	OpenID Connect Resource Owner Grant	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
409abaf3-2574-4bd3-a0e5-8f6bbade53c8	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
e5ae1571-1967-4c75-bda6-3919ed9b43b2	registration	registration flow	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
c1f256f8-eb9c-47c3-b277-200cab961245	registration form	registration form	7279654e-2ddf-47fc-8f7d-a9c014f639c6	form-flow	f	t
7a9b6964-a645-4ffd-ae49-f27b7869aff3	reset credentials	Reset credentials for a user if they forgot their password or something	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
8dd345b5-84be-4a7f-8d0a-7ba975800e0c	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
7890f910-0130-42cd-89e7-e1ba3c453f34	clients	Base authentication for clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	client-flow	t	t
95bb04f0-2942-4f4f-b01e-45fce728c7f0	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
27e09e21-78a1-4010-b036-b1236423da94	User creation or linking	Flow for the existing/non-existing user alternatives	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
1a92de12-4140-438c-bd38-44a8604c9c12	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
e7c17c7b-ef76-414f-b6d8-ceb6fee26cd8	Account verification options	Method with which to verity the existing account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
97ee26ec-9e3d-4c6a-8c14-b1d880f02df5	Verify Existing Account by Re-authentication	Reauthentication of existing account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
5602f5dc-c5ae-473e-985f-c2cf3a1caff9	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
0182604f-0a3e-402b-bcfc-7eabc689bb98	saml ecp	SAML ECP Profile Authentication Flow	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
255366bb-7749-4fe3-a6cb-ab3b585163e0	docker auth	Used by Docker clients to authenticate against the IDP	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
f881bdfd-0944-4670-8962-ddbe4d20affc	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	t	t
d1c7f308-344b-4782-8daa-32f80aba29fa	Authentication Options	Authentication options.	7279654e-2ddf-47fc-8f7d-a9c014f639c6	basic-flow	f	t
ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	browser	browser based authentication	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
e3b5154a-6877-425a-9420-65d3c05af5c3	forms	Username, password, otp and other auth forms.	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
462b23c8-9082-4be3-b25f-6d029232e8e0	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
583c0aeb-0f26-49a9-a08f-9221a6c67d49	direct grant	OpenID Connect Resource Owner Grant	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
6131285c-0eeb-4e0b-b24a-05233fcfd03e	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
8a24c36e-d3f0-428a-ba16-aa24622bd1d5	registration	registration flow	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
148e966f-136e-442f-940c-5c93e21d39d4	registration form	registration form	6abe3626-afce-40f0-b6c4-b9d31c2c882c	form-flow	f	t
57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	reset credentials	Reset credentials for a user if they forgot their password or something	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
bd1a2ec8-fbee-4867-a40d-c04549136db0	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
f69f5490-4cbb-44ff-9844-1fb015dc01fd	clients	Base authentication for clients	6abe3626-afce-40f0-b6c4-b9d31c2c882c	client-flow	t	t
68488754-5ba1-479e-a348-6029d08e2cae	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
71030266-d6e7-46bd-8ec3-949a14d70069	User creation or linking	Flow for the existing/non-existing user alternatives	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
cfdc927b-3646-41ce-8b8d-63f337c46862	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
86adb27c-9bed-417f-b16d-9c2684d1f1ca	Account verification options	Method with which to verity the existing account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
9d2a0376-c2de-4dbb-9466-969122ee3b5e	Verify Existing Account by Re-authentication	Reauthentication of existing account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
7fcf41d1-c441-4a76-b4fd-c51e581335fd	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
0b427431-4201-4cc2-a07d-09794f28220e	saml ecp	SAML ECP Profile Authentication Flow	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
9cbd5892-7ae0-4d66-8846-229ad0487f17	docker auth	Used by Docker clients to authenticate against the IDP	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
e8cb2215-9234-44b1-9ec5-7731dada03e0	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	t	t
cbb84905-313f-458e-8c9b-5d7398fd7b62	Authentication Options	Authentication options.	6abe3626-afce-40f0-b6c4-b9d31c2c882c	basic-flow	f	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
8cf02c10-7a53-48b8-a56b-c62e51eaab52	review profile config	7279654e-2ddf-47fc-8f7d-a9c014f639c6
70b4b426-7b98-455d-b156-a01d6a323cf4	create unique user config	7279654e-2ddf-47fc-8f7d-a9c014f639c6
ba031b93-45e9-496c-a687-b7c8e8f0a513	review profile config	6abe3626-afce-40f0-b6c4-b9d31c2c882c
bf293363-a4bf-4991-b8f7-56ccc14ccc39	create unique user config	6abe3626-afce-40f0-b6c4-b9d31c2c882c
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
70b4b426-7b98-455d-b156-a01d6a323cf4	false	require.password.update.after.registration
8cf02c10-7a53-48b8-a56b-c62e51eaab52	missing	update.profile.on.first.login
                                                               ba031b93-45e9-496c-a687-b7c8e8f0a513	missing	update.profile.on.first.login
                                                                                                                      bf293363-a4bf-4991-b8f7-56ccc14ccc39	false	require.password.update.after.registration
                                                                                                                      \.


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: agregator
--

                                                                                                                      COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
dfae48ef-2265-4f99-a1d9-696f59c76972	t	f	master-realm	0	f	\N	\N	t	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
8d2a67a2-afdd-42d5-8637-f34273d2cc39	t	f	broker	0	f	\N	\N	t	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	t	f	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
309f4574-79b6-40c6-a72d-56147456243d	t	f	admin-cli	0	t	\N	\N	f	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
297c604f-acff-4281-9db3-920bc322ebf7	t	f	agregator-realm	0	f	\N	\N	t	\N	f	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	0	f	f	agregator Realm	f	client-secret	\N	\N	\N	t	f	f	f
24b9a366-73aa-4d5f-8359-301833a3eaff	t	f	realm-management	0	f	\N	\N	t	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	f	account	0	t	\N	/realms/agregator/account/	f	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
69131221-02a3-46b7-980b-e32f42b06fe1	t	f	account-console	0	t	\N	/realms/agregator/account/	f	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	t	f	broker	0	f	\N	\N	t	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
015e83ff-f7b2-4219-b029-5ffd2f507798	t	f	security-admin-console	0	t	\N	/admin/agregator/console/	f	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	t	f	admin-cli	0	t	\N	\N	f	\N	f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
be0d5e62-c478-486d-b7f4-672ed3a22bc8	t	t	web-client	0	t	\N		f		f	6abe3626-afce-40f0-b6c4-b9d31c2c882c	openid-connect	-1	t	f		f	client-secret	http://localhost:5173		\N	t	f	t	f
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_attributes (client_id, name, value) FROM stdin;
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	post.logout.redirect.uris	+
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	post.logout.redirect.uris	+
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	pkce.code.challenge.method	S256
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	post.logout.redirect.uris	+
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	pkce.code.challenge.method	S256
480c6fbf-9e2c-4582-8da2-947d40fad2e5	post.logout.redirect.uris	+
69131221-02a3-46b7-980b-e32f42b06fe1	post.logout.redirect.uris	+
69131221-02a3-46b7-980b-e32f42b06fe1	pkce.code.challenge.method	S256
015e83ff-f7b2-4219-b029-5ffd2f507798	post.logout.redirect.uris	+
015e83ff-f7b2-4219-b029-5ffd2f507798	pkce.code.challenge.method	S256
be0d5e62-c478-486d-b7f4-672ed3a22bc8	oauth2.device.authorization.grant.enabled	false
be0d5e62-c478-486d-b7f4-672ed3a22bc8	oidc.ciba.grant.enabled	false
be0d5e62-c478-486d-b7f4-672ed3a22bc8	backchannel.logout.session.required	true
be0d5e62-c478-486d-b7f4-672ed3a22bc8	backchannel.logout.revoke.offline.tokens	false
be0d5e62-c478-486d-b7f4-672ed3a22bc8	post.logout.redirect.uris	+
be0d5e62-c478-486d-b7f4-672ed3a22bc8	display.on.consent.screen	false
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	offline_access	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect built-in scope: offline_access	openid-connect
0ee21e37-41ca-4163-bcc4-92a65c4db897	role_list	7279654e-2ddf-47fc-8f7d-a9c014f639c6	SAML role list	saml
8c32ad36-ea17-446d-8d40-aba052f82f81	profile	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect built-in scope: profile	openid-connect
40c3aaaf-313a-460d-a70f-99404618fa3f	email	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect built-in scope: email	openid-connect
02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	address	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect built-in scope: address	openid-connect
40edbe5c-cd1e-4228-b785-74cadfec23c0	phone	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect built-in scope: phone	openid-connect
b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	roles	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect scope for add user roles to the access token	openid-connect
c05bc878-ca6c-492f-b990-5b9e052bf211	web-origins	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect scope for add allowed web origins to the access token	openid-connect
a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	microprofile-jwt	7279654e-2ddf-47fc-8f7d-a9c014f639c6	Microprofile - JWT built-in scope	openid-connect
d2570312-0f1f-4157-aefb-8773f926619c	acr	7279654e-2ddf-47fc-8f7d-a9c014f639c6	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
d8e8e40c-e519-4ede-86b0-d41216dc4ee3	offline_access	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect built-in scope: offline_access	openid-connect
65f77c6e-37f4-471f-8061-42980e26d031	role_list	6abe3626-afce-40f0-b6c4-b9d31c2c882c	SAML role list	saml
f288bc4b-03da-44d3-a976-3e777c84dc41	profile	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect built-in scope: profile	openid-connect
f10e2b88-61c4-4e35-b9e7-436af2a4c342	email	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect built-in scope: email	openid-connect
99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	address	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect built-in scope: address	openid-connect
8a918f21-ddc6-466a-b6b7-0990bc920e51	phone	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect built-in scope: phone	openid-connect
2674243b-30c9-4201-b692-e88e501d4b67	roles	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect scope for add user roles to the access token	openid-connect
4c5b1224-7a6e-4136-a4f1-131a87b1de4f	web-origins	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect scope for add allowed web origins to the access token	openid-connect
dfde669b-5a5a-458b-a56e-41d19bba8aa3	microprofile-jwt	6abe3626-afce-40f0-b6c4-b9d31c2c882c	Microprofile - JWT built-in scope	openid-connect
9fe9a29c-b0c8-4019-8fd9-3521d4053e89	acr	6abe3626-afce-40f0-b6c4-b9d31c2c882c	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	true	display.on.consent.screen
ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	${offlineAccessScopeConsentText}	consent.screen.text
0ee21e37-41ca-4163-bcc4-92a65c4db897	true	display.on.consent.screen
0ee21e37-41ca-4163-bcc4-92a65c4db897	${samlRoleListScopeConsentText}	consent.screen.text
8c32ad36-ea17-446d-8d40-aba052f82f81	true	display.on.consent.screen
8c32ad36-ea17-446d-8d40-aba052f82f81	${profileScopeConsentText}	consent.screen.text
8c32ad36-ea17-446d-8d40-aba052f82f81	true	include.in.token.scope
40c3aaaf-313a-460d-a70f-99404618fa3f	true	display.on.consent.screen
40c3aaaf-313a-460d-a70f-99404618fa3f	${emailScopeConsentText}	consent.screen.text
40c3aaaf-313a-460d-a70f-99404618fa3f	true	include.in.token.scope
02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	true	display.on.consent.screen
02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	${addressScopeConsentText}	consent.screen.text
02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	true	include.in.token.scope
40edbe5c-cd1e-4228-b785-74cadfec23c0	true	display.on.consent.screen
40edbe5c-cd1e-4228-b785-74cadfec23c0	${phoneScopeConsentText}	consent.screen.text
40edbe5c-cd1e-4228-b785-74cadfec23c0	true	include.in.token.scope
b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	true	display.on.consent.screen
b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	${rolesScopeConsentText}	consent.screen.text
b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	false	include.in.token.scope
c05bc878-ca6c-492f-b990-5b9e052bf211	false	display.on.consent.screen
c05bc878-ca6c-492f-b990-5b9e052bf211		consent.screen.text
c05bc878-ca6c-492f-b990-5b9e052bf211	false	include.in.token.scope
a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	false	display.on.consent.screen
a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	true	include.in.token.scope
d2570312-0f1f-4157-aefb-8773f926619c	false	display.on.consent.screen
d2570312-0f1f-4157-aefb-8773f926619c	false	include.in.token.scope
d8e8e40c-e519-4ede-86b0-d41216dc4ee3	true	display.on.consent.screen
d8e8e40c-e519-4ede-86b0-d41216dc4ee3	${offlineAccessScopeConsentText}	consent.screen.text
65f77c6e-37f4-471f-8061-42980e26d031	true	display.on.consent.screen
65f77c6e-37f4-471f-8061-42980e26d031	${samlRoleListScopeConsentText}	consent.screen.text
f288bc4b-03da-44d3-a976-3e777c84dc41	true	display.on.consent.screen
f288bc4b-03da-44d3-a976-3e777c84dc41	${profileScopeConsentText}	consent.screen.text
f288bc4b-03da-44d3-a976-3e777c84dc41	true	include.in.token.scope
f10e2b88-61c4-4e35-b9e7-436af2a4c342	true	display.on.consent.screen
f10e2b88-61c4-4e35-b9e7-436af2a4c342	${emailScopeConsentText}	consent.screen.text
f10e2b88-61c4-4e35-b9e7-436af2a4c342	true	include.in.token.scope
99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	true	display.on.consent.screen
99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	${addressScopeConsentText}	consent.screen.text
99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	true	include.in.token.scope
8a918f21-ddc6-466a-b6b7-0990bc920e51	true	display.on.consent.screen
8a918f21-ddc6-466a-b6b7-0990bc920e51	${phoneScopeConsentText}	consent.screen.text
8a918f21-ddc6-466a-b6b7-0990bc920e51	true	include.in.token.scope
2674243b-30c9-4201-b692-e88e501d4b67	true	display.on.consent.screen
2674243b-30c9-4201-b692-e88e501d4b67	${rolesScopeConsentText}	consent.screen.text
2674243b-30c9-4201-b692-e88e501d4b67	false	include.in.token.scope
4c5b1224-7a6e-4136-a4f1-131a87b1de4f	false	display.on.consent.screen
4c5b1224-7a6e-4136-a4f1-131a87b1de4f		consent.screen.text
4c5b1224-7a6e-4136-a4f1-131a87b1de4f	false	include.in.token.scope
dfde669b-5a5a-458b-a56e-41d19bba8aa3	false	display.on.consent.screen
dfde669b-5a5a-458b-a56e-41d19bba8aa3	true	include.in.token.scope
9fe9a29c-b0c8-4019-8fd9-3521d4053e89	false	display.on.consent.screen
9fe9a29c-b0c8-4019-8fd9-3521d4053e89	false	include.in.token.scope
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	40c3aaaf-313a-460d-a70f-99404618fa3f	t
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	d2570312-0f1f-4157-aefb-8773f926619c	t
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	8c32ad36-ea17-446d-8d40-aba052f82f81	t
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	c05bc878-ca6c-492f-b990-5b9e052bf211	t
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	40c3aaaf-313a-460d-a70f-99404618fa3f	t
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	d2570312-0f1f-4157-aefb-8773f926619c	t
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	8c32ad36-ea17-446d-8d40-aba052f82f81	t
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	c05bc878-ca6c-492f-b990-5b9e052bf211	t
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
309f4574-79b6-40c6-a72d-56147456243d	40c3aaaf-313a-460d-a70f-99404618fa3f	t
309f4574-79b6-40c6-a72d-56147456243d	d2570312-0f1f-4157-aefb-8773f926619c	t
309f4574-79b6-40c6-a72d-56147456243d	8c32ad36-ea17-446d-8d40-aba052f82f81	t
309f4574-79b6-40c6-a72d-56147456243d	c05bc878-ca6c-492f-b990-5b9e052bf211	t
309f4574-79b6-40c6-a72d-56147456243d	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
309f4574-79b6-40c6-a72d-56147456243d	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
309f4574-79b6-40c6-a72d-56147456243d	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
309f4574-79b6-40c6-a72d-56147456243d	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
309f4574-79b6-40c6-a72d-56147456243d	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
8d2a67a2-afdd-42d5-8637-f34273d2cc39	40c3aaaf-313a-460d-a70f-99404618fa3f	t
8d2a67a2-afdd-42d5-8637-f34273d2cc39	d2570312-0f1f-4157-aefb-8773f926619c	t
8d2a67a2-afdd-42d5-8637-f34273d2cc39	8c32ad36-ea17-446d-8d40-aba052f82f81	t
8d2a67a2-afdd-42d5-8637-f34273d2cc39	c05bc878-ca6c-492f-b990-5b9e052bf211	t
8d2a67a2-afdd-42d5-8637-f34273d2cc39	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
8d2a67a2-afdd-42d5-8637-f34273d2cc39	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
8d2a67a2-afdd-42d5-8637-f34273d2cc39	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
8d2a67a2-afdd-42d5-8637-f34273d2cc39	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
8d2a67a2-afdd-42d5-8637-f34273d2cc39	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
dfae48ef-2265-4f99-a1d9-696f59c76972	40c3aaaf-313a-460d-a70f-99404618fa3f	t
dfae48ef-2265-4f99-a1d9-696f59c76972	d2570312-0f1f-4157-aefb-8773f926619c	t
dfae48ef-2265-4f99-a1d9-696f59c76972	8c32ad36-ea17-446d-8d40-aba052f82f81	t
dfae48ef-2265-4f99-a1d9-696f59c76972	c05bc878-ca6c-492f-b990-5b9e052bf211	t
dfae48ef-2265-4f99-a1d9-696f59c76972	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
dfae48ef-2265-4f99-a1d9-696f59c76972	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
dfae48ef-2265-4f99-a1d9-696f59c76972	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
dfae48ef-2265-4f99-a1d9-696f59c76972	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
dfae48ef-2265-4f99-a1d9-696f59c76972	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	40c3aaaf-313a-460d-a70f-99404618fa3f	t
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	d2570312-0f1f-4157-aefb-8773f926619c	t
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	8c32ad36-ea17-446d-8d40-aba052f82f81	t
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	c05bc878-ca6c-492f-b990-5b9e052bf211	t
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
480c6fbf-9e2c-4582-8da2-947d40fad2e5	2674243b-30c9-4201-b692-e88e501d4b67	t
480c6fbf-9e2c-4582-8da2-947d40fad2e5	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
480c6fbf-9e2c-4582-8da2-947d40fad2e5	f288bc4b-03da-44d3-a976-3e777c84dc41	t
480c6fbf-9e2c-4582-8da2-947d40fad2e5	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
480c6fbf-9e2c-4582-8da2-947d40fad2e5	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
480c6fbf-9e2c-4582-8da2-947d40fad2e5	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
480c6fbf-9e2c-4582-8da2-947d40fad2e5	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
480c6fbf-9e2c-4582-8da2-947d40fad2e5	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
480c6fbf-9e2c-4582-8da2-947d40fad2e5	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
69131221-02a3-46b7-980b-e32f42b06fe1	2674243b-30c9-4201-b692-e88e501d4b67	t
69131221-02a3-46b7-980b-e32f42b06fe1	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
69131221-02a3-46b7-980b-e32f42b06fe1	f288bc4b-03da-44d3-a976-3e777c84dc41	t
69131221-02a3-46b7-980b-e32f42b06fe1	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
69131221-02a3-46b7-980b-e32f42b06fe1	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
69131221-02a3-46b7-980b-e32f42b06fe1	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
69131221-02a3-46b7-980b-e32f42b06fe1	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
69131221-02a3-46b7-980b-e32f42b06fe1	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
69131221-02a3-46b7-980b-e32f42b06fe1	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	2674243b-30c9-4201-b692-e88e501d4b67	t
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	f288bc4b-03da-44d3-a976-3e777c84dc41	t
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
8de10592-51ab-48c7-a1ed-98c6dfd5a72b	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	2674243b-30c9-4201-b692-e88e501d4b67	t
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	f288bc4b-03da-44d3-a976-3e777c84dc41	t
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
0f20ba1f-fe05-4b79-9146-56d5f9c226c8	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
24b9a366-73aa-4d5f-8359-301833a3eaff	2674243b-30c9-4201-b692-e88e501d4b67	t
24b9a366-73aa-4d5f-8359-301833a3eaff	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
24b9a366-73aa-4d5f-8359-301833a3eaff	f288bc4b-03da-44d3-a976-3e777c84dc41	t
24b9a366-73aa-4d5f-8359-301833a3eaff	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
24b9a366-73aa-4d5f-8359-301833a3eaff	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
24b9a366-73aa-4d5f-8359-301833a3eaff	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
24b9a366-73aa-4d5f-8359-301833a3eaff	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
24b9a366-73aa-4d5f-8359-301833a3eaff	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
24b9a366-73aa-4d5f-8359-301833a3eaff	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
015e83ff-f7b2-4219-b029-5ffd2f507798	2674243b-30c9-4201-b692-e88e501d4b67	t
015e83ff-f7b2-4219-b029-5ffd2f507798	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
015e83ff-f7b2-4219-b029-5ffd2f507798	f288bc4b-03da-44d3-a976-3e777c84dc41	t
015e83ff-f7b2-4219-b029-5ffd2f507798	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
015e83ff-f7b2-4219-b029-5ffd2f507798	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
015e83ff-f7b2-4219-b029-5ffd2f507798	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
015e83ff-f7b2-4219-b029-5ffd2f507798	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
015e83ff-f7b2-4219-b029-5ffd2f507798	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
015e83ff-f7b2-4219-b029-5ffd2f507798	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
be0d5e62-c478-486d-b7f4-672ed3a22bc8	2674243b-30c9-4201-b692-e88e501d4b67	t
be0d5e62-c478-486d-b7f4-672ed3a22bc8	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
be0d5e62-c478-486d-b7f4-672ed3a22bc8	f288bc4b-03da-44d3-a976-3e777c84dc41	t
be0d5e62-c478-486d-b7f4-672ed3a22bc8	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
be0d5e62-c478-486d-b7f4-672ed3a22bc8	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
be0d5e62-c478-486d-b7f4-672ed3a22bc8	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
be0d5e62-c478-486d-b7f4-672ed3a22bc8	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
be0d5e62-c478-486d-b7f4-672ed3a22bc8	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
be0d5e62-c478-486d-b7f4-672ed3a22bc8	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	03784a5b-7382-4f65-9018-503e84f931bc
d8e8e40c-e519-4ede-86b0-d41216dc4ee3	d0888358-b458-402d-959a-18ed339f0226
\.


--
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_session (id, client_id, redirect_uri, state, "timestamp", session_id, auth_method, realm_id, auth_user_id, current_action) FROM stdin;
\.


--
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_session_auth_status (authenticator, status, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_session_prot_mapper (protocol_mapper_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_session_role (role_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.client_user_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
903c8beb-6fc0-4aa1-8993-f6ec019d10a5	Trusted Hosts	7279654e-2ddf-47fc-8f7d-a9c014f639c6	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
6ae5e211-4cb3-4f51-a8f4-d8b1dd6c97fa	Consent Required	7279654e-2ddf-47fc-8f7d-a9c014f639c6	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
114017ed-0a7e-4301-a25b-5ae2545c4150	Full Scope Disabled	7279654e-2ddf-47fc-8f7d-a9c014f639c6	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
f96dcd98-11f4-44fb-b420-2f310b302131	Max Clients Limit	7279654e-2ddf-47fc-8f7d-a9c014f639c6	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
c1efc56b-14c2-4231-b593-ef5b1e771107	Allowed Protocol Mapper Types	7279654e-2ddf-47fc-8f7d-a9c014f639c6	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
0edd1eb5-e16c-49fb-97b3-1459d73bf102	Allowed Client Scopes	7279654e-2ddf-47fc-8f7d-a9c014f639c6	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	anonymous
4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	Allowed Protocol Mapper Types	7279654e-2ddf-47fc-8f7d-a9c014f639c6	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	authenticated
cc52c4c2-8b2d-4951-9111-ed25ff3db70e	Allowed Client Scopes	7279654e-2ddf-47fc-8f7d-a9c014f639c6	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	authenticated
dd1889da-76cb-46aa-a406-dece9bb6a6ce	rsa-generated	7279654e-2ddf-47fc-8f7d-a9c014f639c6	rsa-generated	org.keycloak.keys.KeyProvider	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N
d5f37122-e1f6-4f51-8a17-cca947a26825	rsa-enc-generated	7279654e-2ddf-47fc-8f7d-a9c014f639c6	rsa-enc-generated	org.keycloak.keys.KeyProvider	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N
798258b5-44ae-46d0-b9d7-5328ef4ff5bb	hmac-generated	7279654e-2ddf-47fc-8f7d-a9c014f639c6	hmac-generated	org.keycloak.keys.KeyProvider	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N
b608fc87-8b48-47d2-9999-2fd0d6eefa05	aes-generated	7279654e-2ddf-47fc-8f7d-a9c014f639c6	aes-generated	org.keycloak.keys.KeyProvider	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N
77ede18a-dd69-434f-bb2c-5210f264c5fc	rsa-generated	6abe3626-afce-40f0-b6c4-b9d31c2c882c	rsa-generated	org.keycloak.keys.KeyProvider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N
c1106df9-67f8-4a8f-97d5-f6fa97488fe3	rsa-enc-generated	6abe3626-afce-40f0-b6c4-b9d31c2c882c	rsa-enc-generated	org.keycloak.keys.KeyProvider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N
fa25d4ac-a0b3-4ac0-92b5-672f131e989d	hmac-generated	6abe3626-afce-40f0-b6c4-b9d31c2c882c	hmac-generated	org.keycloak.keys.KeyProvider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N
a3392015-1164-42a2-9a45-fa21ba6604df	aes-generated	6abe3626-afce-40f0-b6c4-b9d31c2c882c	aes-generated	org.keycloak.keys.KeyProvider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N
a67d7f7f-cc46-4905-abbd-ff5c07a61b30	Trusted Hosts	6abe3626-afce-40f0-b6c4-b9d31c2c882c	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
3b982389-4610-4396-8938-56eb6fc9013e	Consent Required	6abe3626-afce-40f0-b6c4-b9d31c2c882c	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
6fc4df6e-a9aa-4bf1-916a-d0441eed8c5d	Full Scope Disabled	6abe3626-afce-40f0-b6c4-b9d31c2c882c	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
728ea37a-9c26-43a3-9c15-b776cd36d04b	Max Clients Limit	6abe3626-afce-40f0-b6c4-b9d31c2c882c	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
e62c2975-ace5-4c35-aafa-54555c2d0b88	Allowed Protocol Mapper Types	6abe3626-afce-40f0-b6c4-b9d31c2c882c	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
fdaf1004-3460-4348-8f0e-d4eb55d58926	Allowed Client Scopes	6abe3626-afce-40f0-b6c4-b9d31c2c882c	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	anonymous
f63d80da-32ec-4a39-a4b3-cc897441f0a0	Allowed Protocol Mapper Types	6abe3626-afce-40f0-b6c4-b9d31c2c882c	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	authenticated
d7c33b89-2c50-4633-af95-3f6f24491bf3	Allowed Client Scopes	6abe3626-afce-40f0-b6c4-b9d31c2c882c	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	authenticated
ea1f3463-838e-4976-af8b-e5a4287d5c32	\N	6abe3626-afce-40f0-b6c4-b9d31c2c882c	declarative-user-profile	org.keycloak.userprofile.UserProfileProvider	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
be32a243-5cce-4dde-b811-cfdb24af7815	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
8b2cac72-ddec-469f-92d8-6b69113fd2fd	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	saml-role-list-mapper
a7d8270c-da36-443e-8ed2-9e51787f3482	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
413a0828-0f09-4946-97fb-8f71a536432e	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	saml-user-attribute-mapper
0f6d3357-65fd-4e40-8c7a-ef6279b37ff8	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	oidc-full-name-mapper
cf8b91e3-f3af-4a51-93a3-2a37ee89ada0	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
5ae53d60-e832-4973-a46e-0a11a450ceb5	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	oidc-address-mapper
9c07f571-2492-4ea3-ad37-a90945e1bd81	4c2094c7-9a1d-43b4-8bd2-c7f7b7550bdf	allowed-protocol-mapper-types	saml-user-property-mapper
6f2829ce-8640-4859-9434-018cfc3db98e	903c8beb-6fc0-4aa1-8993-f6ec019d10a5	client-uris-must-match	true
3a1cfa7d-d5f2-4d2e-a389-72d94e9c6ad2	903c8beb-6fc0-4aa1-8993-f6ec019d10a5	host-sending-registration-request-must-match	true
dbcda999-eec0-4765-ac85-1c182e4bdef8	0edd1eb5-e16c-49fb-97b3-1459d73bf102	allow-default-scopes	true
df043c0e-d4d5-43f3-83ab-6dc275c855eb	f96dcd98-11f4-44fb-b420-2f310b302131	max-clients	200
e4012da4-d8d9-454e-85af-85bad9b2345f	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	oidc-address-mapper
6f2b603d-ef17-48f2-9c01-62c9aa3d289d	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
93a2434b-01f5-43d1-a658-f556b96796a3	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	saml-user-property-mapper
b4ef8b48-39ca-48e6-88be-36c0f76c373e	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	saml-user-attribute-mapper
0b564244-a0cc-4dba-9501-332e90d8828c	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
2ace3431-7148-40f9-89d9-46c7dd5f51f4	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	saml-role-list-mapper
3dba5e6c-3154-485b-ac43-1ab02a28ebab	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	oidc-full-name-mapper
5d5bacdc-244c-46a6-ac7c-421de5701fe7	c1efc56b-14c2-4231-b593-ef5b1e771107	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
2307d020-1e3e-4409-aab3-24e3dfdba539	cc52c4c2-8b2d-4951-9111-ed25ff3db70e	allow-default-scopes	true
275c2f60-32e6-4a10-8b65-cb5f5d18a02e	798258b5-44ae-46d0-b9d7-5328ef4ff5bb	algorithm	HS256
5702e89f-a2a1-4364-adf5-666eaeb48b72	798258b5-44ae-46d0-b9d7-5328ef4ff5bb	priority	100
c2a76eb6-39b1-4cf2-9dc6-720023ecaf28	798258b5-44ae-46d0-b9d7-5328ef4ff5bb	kid	25fd8f1e-5aef-4982-adf9-cd35224d3c6f
2cc8dca3-f51f-4f27-8916-2ce55b00a7c3	798258b5-44ae-46d0-b9d7-5328ef4ff5bb	secret	viAFe9wgupHClNCq4akt6OIGt67qOkJ4GcPLTKIuQ-3Oor2mPQ6Hq_8JjoN9UIJg-bqE6qE8XkugBFqo5BbATg
7fd6bc99-5f74-4a08-8c4a-be40b77f8780	b608fc87-8b48-47d2-9999-2fd0d6eefa05	priority	100
1c88df87-89c1-4241-b3b8-bc6febf371ba	b608fc87-8b48-47d2-9999-2fd0d6eefa05	kid	1a3eef81-8bc4-4a2e-ba98-74b927eebe13
b7cfc35b-6124-4744-a738-db6fba0ff4e4	b608fc87-8b48-47d2-9999-2fd0d6eefa05	secret	IPdxn3502YzKla6HdSaorQ
d5968497-8e96-4dfc-99a6-533bdba6b6e3	dd1889da-76cb-46aa-a406-dece9bb6a6ce	privateKey	MIIEogIBAAKCAQEArsS3t2bL642J65i8eei0o27tAEv5sh9ONK3RTZ4BGZCvq2Jz3KGfaaj8gbNe3kdZ0sfY+Cz0n372eUsPrkanH1sYKBoNXDESNL+znlKX46YSjzoJJAfC5YB3zaYX0AqogFqcDgsPM03UYHC4E5HxMxQaVgkLluE7XPfDJaCIJocXKC36CgKtt1Q9EfzgRaqYELxIattdTWp/a0t8zi+VgRwjxi2moblKmKigUtST7JdryVHXn/YgNYQobQac8h+ZFOeViAVolPjMknSzT97lWSS6w6d76b8oOA0cpRYflpGej4k4jrN8LmWJ+eeZVuwZVXdYz4C21YYQQCfKnH+FKwIDAQABAoIBAB7zK23JQJeoayJT3BzivwqqXEJPMhr/PERL++L49kzmuJVrTAVogeieSolVkJlgnWGcjqn0nCWawF9ekZpVXMdKxI5lfrQy5Hx+7no9OjTQdjzzFCdTUIqAI7dBkLoBCTIh2b0K7Fgzkka5739XuxVGnBtcYrcHkBG4ttB1C2d2/gZ39cFRm3aeG+YtXSuUjZODOEcVKMaPQRZkbvzjJQO66Yjep902SjqgjIC78twnqD2KTnGuqWVX/z0D9eUeAJ1tDVagdd3J3F8Pq1D85098HRDPMP19/FbSttQXwqcCrj/dNfT3fIEC1Ou6KWtgSKXYXr4HylZjy5ZxIvB1nsECgYEA2vYSkcg14hKA8FCudQA3TZxnCXfJXyw1VRyKJrLa6lOl+TwyvXf3Yc33oxV6zrwZRXXkfimePUmUWara5P/TwYv7nIkXYiibDwAOrzP48iSAR70gRTLh2S94V+h5WyDVH+cxv/Us2LbogkPlNAYN8n8CAD5Un8oo6pMgIWJVwlECgYEAzFTqCZoWoH6K+9d35tEf+drLeqFs9hAXIXLDgvyfqqEALKlMMuHj+oF8u2RAD2OFxd0keL16AfqCFJ1O5v5XidEOrKO/j52mFfVNvpGuRSm26+Fr9HuCFRewewCrQ82g2dTdoQyicVdMjJLIGCszNIK0mBWBfR9u7RIrfwSYVLsCgYAuKAccEf9By7LAddGAum3t/1U9CrI5TMFlUqHQrI03LjDjjAwKIprUVC2qhCGiKMaO/N4Qtkc0FimeiUShV0hVGWQNyFxUhcjB7boqtqL4sDcWaEjALYysUrRkm43RZudmVT8Ifu9YM55pr1RGliwkfR9326vNDzl20VLJlsgLMQKBgBbRuN1fpv0/hJgBhTNy0WZe5/CHDJsiSuMCZRFA0zgECPfz5D2eeo5kXaCz3m+ZhrwFKWiOiIymBFb3BnPHndEXVtMy6lbInV7AaXFJ5bN1qCcJorvH+0wNvDjQZ1AIK9mH60RsG8wamsLsNYp1cJ+BpVeCt1ZY51N0fwUNZ1G3AoGAF5LOCc8nYl9mcXkNzh4tKrNOWc8v1xEoMMnHDK0Sba3TykyMGtFRPxIH/+7VdX7c//LCBzstfALjPrPZ4ByUMf6eWG0azfGkjcCOVTXNitz2QVDWBz+0uayfuMXJWu4ciL241ID3ksSSY2PeUynfi8RuwRe7j6dO/h+YX882IRA=
6b7c0e4e-24a4-485f-b902-02576048bf43	dd1889da-76cb-46aa-a406-dece9bb6a6ce	certificate	MIICmzCCAYMCBgGS1G5pDTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDI4MTgzOTE4WhcNMzQxMDI4MTg0MDU4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCuxLe3ZsvrjYnrmLx56LSjbu0AS/myH040rdFNngEZkK+rYnPcoZ9pqPyBs17eR1nSx9j4LPSffvZ5Sw+uRqcfWxgoGg1cMRI0v7OeUpfjphKPOgkkB8LlgHfNphfQCqiAWpwOCw8zTdRgcLgTkfEzFBpWCQuW4Ttc98MloIgmhxcoLfoKAq23VD0R/OBFqpgQvEhq211Nan9rS3zOL5WBHCPGLaahuUqYqKBS1JPsl2vJUdef9iA1hChtBpzyH5kU55WIBWiU+MySdLNP3uVZJLrDp3vpvyg4DRylFh+WkZ6PiTiOs3wuZYn555lW7BlVd1jPgLbVhhBAJ8qcf4UrAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAB5Gs5TyzrAS9WRhFNSIhOzdHzo/eTNOPtPqc7J5O8FwMU/AixSPSSsnNLhUGINUN2JtVxf8IHdj9goOlhaIN6h/aBKfll3EpcvtV2KNY+p5thuTDqKqmFlCvNkve0cGyvaioFglJG3moNszUtxYfOablPMoYM0gSCqBpfo+JvLLd2swbh5ZKEFt2bfYhZ/5WzGHoa6lABICdNmu5WyoMROXF2c4m2SWl/XdDVe5ltSKlh0y8t4FJRqWIIWAAIRS5L+ssJ29AXVzhfB+N+T75fOPuWpukqlp/ZZGm6t+z3rR490jJJhpJrJEx6/iYxLVyeoAzXTUvlmLi2dJNJkqNH8=
d82ac9c1-35f4-4b41-b9d5-ca60720732e1	dd1889da-76cb-46aa-a406-dece9bb6a6ce	priority	100
83e6dc25-c431-4af3-9ffe-c51637f02135	dd1889da-76cb-46aa-a406-dece9bb6a6ce	keyUse	SIG
78dd36da-e104-438e-9bad-b2412b9f0a45	d5f37122-e1f6-4f51-8a17-cca947a26825	privateKey	MIIEowIBAAKCAQEAuFg7eQPTzY1BoCcHO1xEeiRe880wFioeUYC223MzKSS7v5et9lobyuEeH0HLhVdHPRhkCrlmkFY933/pXGjeKiy6ImLBiVZANfYx8SD0vbbv9QiNMDUJpJOp0iYVCYVGhJhOE+Yf/m0UrUmvlW4p9xopDQXyEuT8okeic4aYMHjLvjDU1IiG86t1sM7s92T2tDA/BVlAOh9eykRJz6uvanp2/oyP8t2fL/NtUuPZvrD+KGd6I0/NMaGp2AIl/zBz93JjN2H5fql3llVkOdL69JEbbqhVFKfjy7FCnEg8guliD7/+Zooyz1AkiPm53QQVrgDWwDg+HWP5YspgSamXywIDAQABAoIBAAzOjGsu2eMY4itHKthz44n8xt/3LFUN3gdZgtqiGTbNh4Ga/wnzXqTsmNQhFQuRcbCL5j9cfAShCTFiyIqT+oNBkjjbVYi+Bj35eaS/3mDjua3zRyPHO4FEhPLFlIaRzMFfd2UogqaBW4NicCFYgu/Y0GtIM3YelHKNuXp/KkmLrKNzn+Vu+rfj+WxbEQXFM6px1EaS5eoOlF56FktJCp5sWMpqe0tEVYZkJZE7xWyKG5tH+aH6ECU7xAm5OHk4GUhJVXWDVIbDaO/J0r2gYAooEqqqVUkCL3Lwf3NHl0xqEjpW4Fdj3Omkj11f7cH+Onu1QKOVSNaW/q6Sox0r5jkCgYEA3TI0iP4YNYirmFfBLCR6qCTKxUijYSgSh0Z4Mb1fDouyYtoCHF3UDprCs/XGiMOOd0tKtT6WNW1C/dA+5sH2RE/pLX/foF0UionH4IY9EOSYiASAGsd1C3Mxd5HETgmIj9LK78AbQTP2wo+fFoYeFK2nDYkWR+Q01I4yOw9PbC8CgYEA1Vml2zZeUSTm8EcXAmSyyWEJrFGIW0cZsZ1pNEa9bKpvvAyESGoLfPmhLgM+yltdcbNcB2mMqS4/5pdLeSC+kl3mj3aUSEIHMgcrJO8t6euHoFyM4FHWxr1fcN2zTFDuMfgS4BRYUtm78pe6YnVRXrwbPhBIym4L7kI35yoaGyUCgYEAwEqd6x3h0+AtNHHNZ9+KldPuRtVf2t1oRhtX7/2tvkppWJAnV5ul9tBJRQL7hfdjSYe1uZxgHrAOlfHMTPT/buF9V2Wb9aAVdF5U2XY5bg8cHtqytxUARmTs8wJQgnq9MjLQ4t3Bk8xlzzvl1EHhsp5H5HdxXCwiVUoMltU3eVcCgYApIdZ7E9lNNZsceegyuu1JK98sjK+IQYXvm1R8EqNUfut5ysP6Hg/G8W2krFV/t+ulDxpQB4Zp25PQRhzz5l83YskfoZHm+GvgtkcYINCuR41nWlCCsuSAfmQXI3b84KF7msMw1ltM5dN5as0xTEL6y7NI3OTbuimsrrGObKyJzQKBgA9GKUkpH2WzI9G7ojgFBdusBTKD9MbCIiSeKiJViFytoLwQgPfglbsmwQEfc07RfAo4DBITxfn9sgcN3tXr66uwAu2GJkf+VWHToTyammz4yUM442DJnufYIDXq0qBaCSkebtuSoRnCmV20bL7+ynrYnW40KYdLWb4h9pXOe5iL
87b3211e-d74d-4370-93bf-1fcde2944c10	d5f37122-e1f6-4f51-8a17-cca947a26825	keyUse	ENC
87781bbb-e6b7-4a8d-889c-381e6dd9d4ac	d5f37122-e1f6-4f51-8a17-cca947a26825	algorithm	RSA-OAEP
dfb4bc93-0cb4-41c3-bd48-2d57ba426546	d5f37122-e1f6-4f51-8a17-cca947a26825	certificate	MIICmzCCAYMCBgGS1G5pdjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDI4MTgzOTE4WhcNMzQxMDI4MTg0MDU4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC4WDt5A9PNjUGgJwc7XER6JF7zzTAWKh5RgLbbczMpJLu/l632WhvK4R4fQcuFV0c9GGQKuWaQVj3ff+lcaN4qLLoiYsGJVkA19jHxIPS9tu/1CI0wNQmkk6nSJhUJhUaEmE4T5h/+bRStSa+Vbin3GikNBfIS5PyiR6JzhpgweMu+MNTUiIbzq3Wwzuz3ZPa0MD8FWUA6H17KREnPq69qenb+jI/y3Z8v821S49m+sP4oZ3ojT80xoanYAiX/MHP3cmM3Yfl+qXeWVWQ50vr0kRtuqFUUp+PLsUKcSDyC6WIPv/5mijLPUCSI+bndBBWuANbAOD4dY/liymBJqZfLAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJYEMB0aeAopFZMaEvKDpR04S+68teF/iWZoI+o1HY8Mqzr1akxqLrf+Cbf4l2KhLjXZYzI1mJQDgWKcLqg2nwX5YHNOnTAPIhRbLj5Rh+3dSp2Ztcptk6UhIge92pNSbfuV2zG2Zy9Rf+8bhCwHc2jA+cGcgEz5VfT1EmMQuzBA7kKar8grp/PJb4GnTGVpaqsIddKrELjAZJbNlMdLw8y4Imm0f2Uwwcl52NE+CNy8omWleTya4KGV5BXx+Slsi916n2fV/nDE4WZeYYR4CjJeegYmuhtgFXxJrmXsSvafHwlMvElTE/m3qZBktQ9C+c4YE1sB/3jH8aiJ2wv5Qqw=
92d601e3-36f1-4346-9003-c5489c15271c	d5f37122-e1f6-4f51-8a17-cca947a26825	priority	100
346facd5-14a5-4c19-af1f-e16d52d787e7	fa25d4ac-a0b3-4ac0-92b5-672f131e989d	secret	uKuCpCa3hNNaER3wDP7dgrxYbBAVU8eeMFXth75mzOJx_jd6DnpQgLTF6JgZizQKlU93mtYBJumyj8AOlS2NNw
6e5292e9-2d58-47a4-b7a7-c788a43d297d	fa25d4ac-a0b3-4ac0-92b5-672f131e989d	kid	9ce5b2f0-493c-49cc-bb35-08ebeb52ccec
eca1987c-194d-42f7-bc18-9a1c0af195c1	fa25d4ac-a0b3-4ac0-92b5-672f131e989d	algorithm	HS256
0be93754-82ef-4090-ae68-192465ee9a59	fa25d4ac-a0b3-4ac0-92b5-672f131e989d	priority	100
7a19d445-7258-4f6b-8b60-cee489b00777	a3392015-1164-42a2-9a45-fa21ba6604df	priority	100
f9a22328-174e-4bc9-816d-81d9b13a1e81	a3392015-1164-42a2-9a45-fa21ba6604df	secret	wwLwoR23OUYxKmLjB-dobg
65f67408-2615-4c13-a710-243aad1bd7a8	a3392015-1164-42a2-9a45-fa21ba6604df	kid	8b2697e5-4f5f-4d1d-8757-961ff17ce929
7aaf402c-64a3-4af6-8059-47306ccd3b4d	c1106df9-67f8-4a8f-97d5-f6fa97488fe3	priority	100
6d09d4d4-95fc-4315-817d-18dc261ac2e9	c1106df9-67f8-4a8f-97d5-f6fa97488fe3	certificate	MIICoTCCAYkCBgGS1HJlwTANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDDAlhZ3JlZ2F0b3IwHhcNMjQxMDI4MTg0MzM5WhcNMzQxMDI4MTg0NTE5WjAUMRIwEAYDVQQDDAlhZ3JlZ2F0b3IwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCo8Xh2JAIKDmqv/8bVzaAlxG0F9/0xHMSEPdJVtx39HzwRy5xrsaUBbXoiHgwKTtzcPTEZMc8MggOk1L+11iRk2f95joUtM2NMMYotN2qRL1tnnDjv5hxPcZPXbcTbT+5NxxbCRIv1/qPzg2JGi/rozFjHLqv5Gx/0d3N3SDR5YGXuDh8GmbaOOUjMJd5w00tCCnOrazw5r8q+jk2aOmIbz5gS2qFgSTMnLQhvyLm04keIa4dPJ9b1uun5aKs2ErY59e14FghNbvPw2ZefR31ko5bXmyRrGGleBgpwDtEIO7sdsZzIYDHthXr24adWGLFxsDcwGSdxVN7WSxDAfyfBAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABodOpnZxiYccqY0/nO98O16+ftxMrEO14sKe2JkCE/7CCA35AQMJ+iJr4xkbGjEWCazC+L7B4TyOjZxj3YX274L7nD8tsKQVxIaPmxnFpWH12OqXPw0FHthph1B4E36ZeW4HjCMzqIvOcDkyOA+dEUlYr6yXCX0u4yfP3qEBfLGD1x0VEtSGAUr1RAmUIrW7sYCUm3ujqK0RgnfqISWER+kuURzgcpbxa5nNFvUgBsGbil6hVjYNhUuTw0d3pteEtScEi1NqsS8fNqeqUt8wI6hHgwPEPaTR4HhsjMFmWCHQ1F8j9/UT0R+LwUhnb4WsKwamUNhAivzHDtMaPVqvuY=
0072c8d7-2a91-4f8f-b31b-b6adf07c6215	c1106df9-67f8-4a8f-97d5-f6fa97488fe3	keyUse	ENC
c0f3556a-7622-4a33-b640-d6525ecaa3ee	c1106df9-67f8-4a8f-97d5-f6fa97488fe3	algorithm	RSA-OAEP
65b0f697-5771-4498-8d5c-ede4a84ebdd9	c1106df9-67f8-4a8f-97d5-f6fa97488fe3	privateKey	MIIEowIBAAKCAQEAqPF4diQCCg5qr//G1c2gJcRtBff9MRzEhD3SVbcd/R88Ecuca7GlAW16Ih4MCk7c3D0xGTHPDIIDpNS/tdYkZNn/eY6FLTNjTDGKLTdqkS9bZ5w47+YcT3GT123E20/uTccWwkSL9f6j84NiRov66MxYxy6r+Rsf9Hdzd0g0eWBl7g4fBpm2jjlIzCXecNNLQgpzq2s8Oa/Kvo5NmjpiG8+YEtqhYEkzJy0Ib8i5tOJHiGuHTyfW9brp+WirNhK2OfXteBYITW7z8NmXn0d9ZKOW15skaxhpXgYKcA7RCDu7HbGcyGAx7YV69uGnVhixcbA3MBkncVTe1ksQwH8nwQIDAQABAoIBAE8xijdPH8mZAnfoHUvh7P1nO3f9zKk2BAS9ehiGEz+xYZYx7OwqxN+LcyIFFb3LRArVgGuABr+lPpIIzKkvbbX83p4bqeALY7O20T/q50CRg3ZpK+OA6apv4k6s/QeVS28YMVn1iepRaIdhAjNxsLdp+v+7qA/IoE0XpX+30ClIvNtQRe1GUIhMd8gT53czNJUm2mrJD8tS0p/W/muO4GCu4tVvjKtuNYOOANmCqbifAdtWncisCi8/506yMOBNcH3hTbQ7i8AQ7AXwYSvSDCaZujYSB0M4NMgbjh7ZJnsO8sXSVQRxM+bJGLBkFN+WMT0IOwabyQ2fQRYPICleI8UCgYEA1FCRSz/+k7Q6jIihYB6v2FRXHcJMesv4sAFiQHPvD2FLD+B65WJohiGC4AZw5DCAE22kEwYHUWJLia3z+0lrzXyRVwN/MLfkXNSbi9Fqa7C/dC1oDqVHS4VfK7VOwunNS6ZWN6Le15mIkDImvbPL9UF+MtblDjLU77uhLmW+07cCgYEAy7RcXBEaABKTmLf7qPf1+AmyLCxfTpZiP9LqjSQM16cmQ5zs9lLEfnE5OY6BGPImIoTa5O35H89mJ7dyuWL8t2Wn45Tvo65ErvgS0lRQ0MymUoPVBumtrzSjQGgCTN12mEq1JL39erGcJCmcsdrwY7seysj1tBXwrsl26LVhEEcCgYA/bAXK/cXVZ3wp6NKT/Pa4X5FacWUZNX8HTJKGAFvEM2MRzhPIG9pvXulSdHoaoCZSJ2lgyWc8N2mrKgx83xTV4EUmQgQnkHcmB9ijLp5kpvq6AKpZ3aNret7QFqv9a4wI8hpFKmD49IMn1+Ncva3KiJLjKvBnimWza1AdpQUZBwKBgQCfD5jG8zugLuE9cPx7dhOEuN19jLBnBxp0x9cKmsnEYuqIBTMrLHnuWa7beKDpv7tzXNYnyIKtCh+0h5R3mgnHkwNDu/pbjypmjaL0xY3NXN/KstJW8YUDuFB5bD3Pk2aViFBl/ky9z44i1rNaVaE73tMueTkSg8dKVFobX/YI5QKBgDEWjN+184bhQdzRnj0zSlq5ht8QOds8GBn5F9Vwrv4DujJAkiN8+A+vS6DgWl2k6aFEywjliSh20kStyvRx7SoKdqZvtM9HTVjDfUipaRMcdrCRcwt80aejz0pepQQHHEl8OH4Yt+02CYVgNILVaTC9eYITUn31HjkRLIduc/I6
7646d9dd-46d4-473a-bb66-c1bb4cf61e3e	77ede18a-dd69-434f-bb2c-5210f264c5fc	keyUse	SIG
d966eb57-8010-46bc-8072-2081301ba35b	77ede18a-dd69-434f-bb2c-5210f264c5fc	certificate	MIICoTCCAYkCBgGS1HJkvDANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDDAlhZ3JlZ2F0b3IwHhcNMjQxMDI4MTg0MzM5WhcNMzQxMDI4MTg0NTE5WjAUMRIwEAYDVQQDDAlhZ3JlZ2F0b3IwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDn2Kojz7rYiUTQtqIRa4gkv0YIhMnNn0zSHPvzvGFiFz1uRkBteNm1aBeou8gCGcKhI3aNsjvXfeqP+ziKU9mcUsDcHfWj4uezDdPDsAEcUd/Tb5btuMQElPyCE8GMQo25Ogy8SzZxCCeZYPtJRgNyJ22mx3LOWDz/Qhr75qJrwHAtUIsU4cFySFSXyVQQnu0+D2M+AFgPB1lhxisbCPTvkqAhMPI0eWy4UFwt+TpuFOWteIP7S4sHtF7CCcPfU1Zgou68vfvL9JxP+o4Y9r+Q2ZqG1dAxZ0FLXF/gwHDw7kZMrI+Kd6Jp485NtyfBxdCsaXBj060JuMkGF4AJOlkFAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAl4IzK3U0gEBJQI5ftOf5mneKa8AIb2bsQ7cXfg380m9hrWoB4RX8dp6WFg96nugTbDYb2AtDNFPVbjOOmW6TzbRsHz59GisPWbjfBHE6cRRAJAuGhLeDQI7n90SOSdAMGGAu3cdIsxbECNHTZ0LXuUcXYH9LcjC+DsCFfKCA02jSbSyuPsyld531BwvJF03/IGMjaQMHBwZ4Rf9e2345LBcUN9k0qcp9jHmF74+V/fxSc5Ts2bMveBXMPJJOHrfEs98d9AOtbN0XhB1Cs9uMpfgEEKSvEcaGU/XYXIgb5zTuEezzyfvcvkx6gU9JNH11J1MOPTFROrgpI0WQcCMYo=
aa8a8c00-213d-4d2e-b6fe-95fe71dc654d	77ede18a-dd69-434f-bb2c-5210f264c5fc	priority	100
4a432b26-25e7-44a8-906e-786c55a0b816	77ede18a-dd69-434f-bb2c-5210f264c5fc	privateKey	MIIEpAIBAAKCAQEA59iqI8+62IlE0LaiEWuIJL9GCITJzZ9M0hz787xhYhc9bkZAbXjZtWgXqLvIAhnCoSN2jbI7133qj/s4ilPZnFLA3B31o+Lnsw3Tw7ABHFHf02+W7bjEBJT8ghPBjEKNuToMvEs2cQgnmWD7SUYDcidtpsdyzlg8/0Ia++aia8BwLVCLFOHBckhUl8lUEJ7tPg9jPgBYDwdZYcYrGwj075KgITDyNHlsuFBcLfk6bhTlrXiD+0uLB7RewgnD31NWYKLuvL37y/ScT/qOGPa/kNmahtXQMWdBS1xf4MBw8O5GTKyPineiaePOTbcnwcXQrGlwY9OtCbjJBheACTpZBQIDAQABAoIBAAvH0W6zLoMJa3Ll8iGvPyXhFRoUQ+bMAXBWKiKRqn/8aYrY91JVI4bSRX5gOvSJs/81itFwQmubwnsL4JBvP7vTVb5kNjY/54FFW21WBr6klbbIX2OFrjF1oaurCzU+du6GHU+pIZjEnSRFSuE5UcqBS2E4z1IXJn5NPxltvw9c0GGrIVjZ5YJoMb8dKqsi/poOyi9IoiUhnMtfp2pyXxCtTN3r9Kvj/doSv1dwXcUPjjnU3nZMGu98ggJ23JmlVt4u6bHh4ZQmkp9Jj0abGd7C2uKZi6qo9/JsCgVntrV/8OpcK7IehBShoeCZZ81GzqMGneSg4lRYY47v1SzVWT8CgYEA/NRvw9PiK1eOYeyWW4kOAb8Yy/5ano90kOXQc4QOvwd2URf7ENVnt/3ncpJ0dYtX9C1TuEm7YxhAiGck/ol5vWUP02g5xvjSRaLoke3oHgzx/n0CLsfPW+nYT/BWxJZSztkqevbi/QRqsjkuGOihuwT98rGBs23LxOVEmqqPRLcCgYEA6sDfa0PgE/x3/ENWm0ghlfE0VmK2XF+Ddwkcld0Pw8Sxr/0q3f8Su9Nccrn2ZGqtE4+Uc7Wi+P3S9D+9piYegcgY/86twIbPht//yUoZRphGyqdyxbzK0Ehf1SV5Gonndds7eFn+O27zawfeG2qK8k7t7NteGD9rTwxf7sdPrCMCgYEA6j8pDhbSBbYphTDeXhCtmZCkONyAuUfQiC9k4qIHx5XyWVAOnZobbq0gM1bd78oaw3D7kFM/+qANqlNmQy68TG3GK+j1HxSKPVqigBIcbTsxOsg3rYAS7uXKNMZInfto3Zz3btYvmJzu/hFcVFe1AMGvR5yOvt+LW/HPjj1YYCECgYBulVypktfDknKTCsWJcHkhwPX+m5F8AiJTuJ8WmYQLnGR3mrLO0JFqmS47fQ5sTzQousIbn7ydvjPZiw0zb1F/oVrlZd7Dir3Hs00y7QzrDGCMpkSSkVSYuP8r0PMzZTL7ecKR9xKjvKg+Cv69u3qomjXKFaxFj9pk6ldmi80kMQKBgQDT6yAIVk/iQclJUIbfLv7uS1SK5hdzUaJYQ0YN8vXIiVjsb6y3AW8gE/Wc2fYWICsjF6XBe8inVtkKR6HLxNXGa/KfL9kOfxRH115Ap7qsDlXLSi/AGNDZpNviRUeaDl0kUvKQQo/AX+VpxDEDzoXz9hpI5a3XH6GEr1PL8tjNLA==
e2bb9eff-efac-44ec-a710-6a72512a2af7	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	saml-user-attribute-mapper
b030d163-af56-46c8-a82e-c3f44befcdf5	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
54a71098-35e0-4b00-befa-1809172eb9e6	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	oidc-full-name-mapper
3af31cab-a58b-4460-974f-aaf1a4950ede	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
63511663-cb62-4303-8853-791c75fe0cec	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	saml-user-property-mapper
29ae89dd-de8c-4da2-9ddf-5cd9a37acdbc	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	saml-role-list-mapper
adc482d3-418e-4ae8-b9a1-ccf45efe847c	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
7deb5484-acc7-42a8-839b-99f03e2c6c62	f63d80da-32ec-4a39-a4b3-cc897441f0a0	allowed-protocol-mapper-types	oidc-address-mapper
49487039-4c5e-479e-96e7-4191610a6ccf	d7c33b89-2c50-4633-af95-3f6f24491bf3	allow-default-scopes	true
a668ef97-5613-4791-ad56-d661d28347aa	fdaf1004-3460-4348-8f0e-d4eb55d58926	allow-default-scopes	true
d0710595-8774-4d6d-a934-c6058aa1012e	a67d7f7f-cc46-4905-abbd-ff5c07a61b30	client-uris-must-match	true
062265da-cd79-41cc-8113-52dfbdb1cd6f	a67d7f7f-cc46-4905-abbd-ff5c07a61b30	host-sending-registration-request-must-match	true
ce9251c9-fc19-44ad-bc54-d38ba8fa1b4d	728ea37a-9c26-43a3-9c15-b776cd36d04b	max-clients	200
13e0e4fe-fc6a-4f51-80df-a10d2d30cb70	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	saml-user-property-mapper
7f7a0b9e-e593-41f5-a053-b63438905052	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
358d67ff-b703-4aa6-a155-cdd000643ad1	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	saml-user-attribute-mapper
4c92404b-06d2-4d75-9d7c-064bf5b765c9	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
cf8620e7-6127-41b1-be7f-313043694f75	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	oidc-address-mapper
db9053c9-b46c-4a8f-bc7e-b196f17e8c6c	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	saml-role-list-mapper
eca8db79-1591-429f-b825-26218b9a35fe	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
d3a77187-1360-4264-9f47-ad7407123e00	e62c2975-ace5-4c35-aafa-54555c2d0b88	allowed-protocol-mapper-types	oidc-full-name-mapper
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.composite_role (composite, child_role) FROM stdin;
c983b233-1311-4b14-977d-ff4edf4ae22e	1252f4fe-2d2d-453a-9dc4-b53cce3f9580
c983b233-1311-4b14-977d-ff4edf4ae22e	248ad6f0-3b95-49f9-bb12-7a89177d4f19
c983b233-1311-4b14-977d-ff4edf4ae22e	f1ad4650-dcd8-440a-afc9-f6b6b5f8f4a7
c983b233-1311-4b14-977d-ff4edf4ae22e	246f42b6-120e-49e9-8154-5ecaf444b31d
c983b233-1311-4b14-977d-ff4edf4ae22e	ca43024c-33cf-49b7-83fc-360d64706239
c983b233-1311-4b14-977d-ff4edf4ae22e	5911dee3-0169-4bd4-a190-82cc6422a1ff
c983b233-1311-4b14-977d-ff4edf4ae22e	76d3096e-b901-44b4-849d-423d3e85c797
c983b233-1311-4b14-977d-ff4edf4ae22e	65af2af8-58b7-4494-ade8-49f320a23209
c983b233-1311-4b14-977d-ff4edf4ae22e	12e28533-2cc0-493f-ab4c-182ba2f7d7ae
c983b233-1311-4b14-977d-ff4edf4ae22e	1a1c8500-51df-4f23-8849-7d8d55e83b17
c983b233-1311-4b14-977d-ff4edf4ae22e	0b02ef8b-5993-4387-9f6c-cba423ffce32
c983b233-1311-4b14-977d-ff4edf4ae22e	3b5cb451-3620-4609-b2f6-31ab0e01153c
c983b233-1311-4b14-977d-ff4edf4ae22e	6596cc1d-1ada-4fe0-9324-7ca507560fc7
c983b233-1311-4b14-977d-ff4edf4ae22e	55d77790-9a17-4441-b898-45dc4627e70b
c983b233-1311-4b14-977d-ff4edf4ae22e	b1f6066c-c215-4748-b934-ecb293ab5f8b
c983b233-1311-4b14-977d-ff4edf4ae22e	01914ec3-7eee-4dac-a6d4-f6fa7c30eacf
c983b233-1311-4b14-977d-ff4edf4ae22e	8f956f7f-0566-4a58-b736-8f04b6dcb0f3
c983b233-1311-4b14-977d-ff4edf4ae22e	5e9d9eb4-5acb-4a5a-98a4-0a52fddf6c4f
246f42b6-120e-49e9-8154-5ecaf444b31d	b1f6066c-c215-4748-b934-ecb293ab5f8b
246f42b6-120e-49e9-8154-5ecaf444b31d	5e9d9eb4-5acb-4a5a-98a4-0a52fddf6c4f
ca43024c-33cf-49b7-83fc-360d64706239	01914ec3-7eee-4dac-a6d4-f6fa7c30eacf
f24f0717-23d9-4364-b3cf-7927c16a2223	1293272b-a940-4200-9a28-6609382b8365
f24f0717-23d9-4364-b3cf-7927c16a2223	2906a673-ba0d-45b9-8969-478fd8b9fdc1
2906a673-ba0d-45b9-8969-478fd8b9fdc1	66940a75-16f2-42eb-858a-c32884843928
cd2166ff-03ba-4950-a8b0-a772b7f1e2b9	ce34f1e5-a938-4c86-93dd-985a2c15fffe
c983b233-1311-4b14-977d-ff4edf4ae22e	9874b974-03ce-49d2-afac-bf6b0e7b0fdd
f24f0717-23d9-4364-b3cf-7927c16a2223	03784a5b-7382-4f65-9018-503e84f931bc
f24f0717-23d9-4364-b3cf-7927c16a2223	3ef6cffe-6994-4396-b4b8-3bc7c24ab0b4
c983b233-1311-4b14-977d-ff4edf4ae22e	92830c15-1035-408a-a95e-c629de26bd84
c983b233-1311-4b14-977d-ff4edf4ae22e	dbde5a06-5511-47ab-acb8-9833745e2f02
c983b233-1311-4b14-977d-ff4edf4ae22e	0b2a847b-821a-46cb-8c95-f4651078f18c
c983b233-1311-4b14-977d-ff4edf4ae22e	bc1e1995-edb4-43ed-9396-fc0c70b51c3b
c983b233-1311-4b14-977d-ff4edf4ae22e	7ab2f881-556e-488b-a939-db830d0d87cc
c983b233-1311-4b14-977d-ff4edf4ae22e	35e53077-cee7-4b6c-a100-e40111dabfd3
c983b233-1311-4b14-977d-ff4edf4ae22e	0fe94a80-a707-49c6-aacd-0cf3f63a4d30
c983b233-1311-4b14-977d-ff4edf4ae22e	14c53f04-6895-496f-bb68-696ab16f7a5d
c983b233-1311-4b14-977d-ff4edf4ae22e	af2b12f2-9322-427d-a1f7-5070a38c5fa0
c983b233-1311-4b14-977d-ff4edf4ae22e	9f85eb5d-d409-4f16-b9cd-1096496e15ab
c983b233-1311-4b14-977d-ff4edf4ae22e	4b4d57a0-1b44-4718-a1fb-52f1498d39ad
c983b233-1311-4b14-977d-ff4edf4ae22e	c3a5bc8e-8084-4d3f-95bb-92a1fc3615a2
c983b233-1311-4b14-977d-ff4edf4ae22e	9c94ef85-9148-4588-8c6c-730617147c2a
c983b233-1311-4b14-977d-ff4edf4ae22e	b8ffe434-7c2c-4fc2-af2a-f5f0e3029d66
c983b233-1311-4b14-977d-ff4edf4ae22e	a9c811b2-0c90-458a-9003-a4a7c1efab36
c983b233-1311-4b14-977d-ff4edf4ae22e	a5f8d190-822e-43de-93d9-d2b79a871a77
c983b233-1311-4b14-977d-ff4edf4ae22e	8a7399b2-916b-48da-bbf6-49ca4f1affcc
0b2a847b-821a-46cb-8c95-f4651078f18c	8a7399b2-916b-48da-bbf6-49ca4f1affcc
0b2a847b-821a-46cb-8c95-f4651078f18c	b8ffe434-7c2c-4fc2-af2a-f5f0e3029d66
bc1e1995-edb4-43ed-9396-fc0c70b51c3b	a9c811b2-0c90-458a-9003-a4a7c1efab36
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	4ee876f8-b065-4001-bcde-38d17cf7db87
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	a16f6549-845f-469b-8039-828c52af88c5
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	b10a89df-a959-40fa-9281-909e87f28e30
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	dfc6868f-1d38-45ce-aa33-2a8f4e638462
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	a4a9fbd4-9155-4f5f-9d7e-9dc851cbac4b
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	da3aeb16-e8b5-4cbf-9604-395064ab6e0c
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	2fdef9c2-9fc5-4c27-b9b8-e59bba2be859
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	3554cfc6-9808-491c-a7df-3d99502b80f3
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	e4f8100b-2e63-43d0-8fcc-16229215b964
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	6dd5873b-8beb-4d8c-8455-cf8834add102
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	8b97c39e-2703-4623-b17d-293f6b8d3ced
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	71671065-45e4-42bb-b566-fb74515e4270
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	184c83d1-5d74-4f72-b8bb-b44a220ee5d3
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	4de44318-d1e4-4891-bf1d-132954e07e23
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	8eb8d717-07b3-436f-9f82-c900b21f12ab
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	f2b10f11-d0fc-4724-a75f-813cf912d477
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	7bf396de-3b98-40aa-b1d8-73194238eca1
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	9bcf3ae2-608b-491a-94dd-52dda894237e
b10a89df-a959-40fa-9281-909e87f28e30	4de44318-d1e4-4891-bf1d-132954e07e23
b10a89df-a959-40fa-9281-909e87f28e30	7bf396de-3b98-40aa-b1d8-73194238eca1
dfc6868f-1d38-45ce-aa33-2a8f4e638462	8eb8d717-07b3-436f-9f82-c900b21f12ab
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	9cac36f5-4768-4d84-9fb2-bc4174b9d7ed
9cac36f5-4768-4d84-9fb2-bc4174b9d7ed	b42a0bb3-8983-4a4e-a489-a1fdedf5f8e0
b7ed6cb6-1099-4368-ba74-4c7197ad051c	15d15e77-b55e-447c-a138-43b7a75919a8
c983b233-1311-4b14-977d-ff4edf4ae22e	e277a8e3-f31c-4a13-93d8-18afe96caeb1
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	955ac55d-8093-46f6-a356-3b2101c1eccb
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	d0888358-b458-402d-959a-18ed339f0226
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	51c363b9-ab80-40b5-8b2b-564cf69e73dc
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
8f9fecbf-1dd0-440f-bfbc-83223185880c	\N	password	717d501c-c8cf-412a-aef4-798c571b5bbd	1730140859147	\N	{"value":"mnrx464fJY0MD/+onIiTqIlflPGmbx8AGq5jsmJkFcfL7Ev3MH+885LayQVlX3jUi6UeYK6Uyns3STaJnOB+AQ==","salt":"6BuajJ/L1KEG5aaHHZUcCA==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
4a58b5c7-dd8b-4202-97dc-19b51b451e4c	\N	password	bfa5c9a5-c9c9-46b6-a325-0a7c179c997c	1730141369083	My password	{"value":"vsAehwCnqd9BjSChUmNmvI+CE5V9Ad2thiCKGNfpXpv5h03OTiLsLYOO8NJ/Ph+OUbF7g3dwJXq9jYCuvYW76w==","salt":"qV1bezA2lDoauEY8WokiNg==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
ff2262b7-760e-4d89-b434-afa23c13ddbd	\N	password	dc955097-850c-44c7-9105-21a11d201858	1730141407795	My password	{"value":"7/GlRuZk6LzzNWJiX12Qh1l7ykdWL/xFmL1POKNUslYEm4Ph1/ePDl1QLqCoHMRX/AF6tsMn4E9nbDoWB8KblQ==","salt":"SDvFvfYHIGauZl1mHjSarA==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2024-10-28 18:40:56.798485	1	EXECUTED	8:bda77d94bf90182a1e30c24f1c155ec7	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.8.0	\N	\N	0140856533
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2024-10-28 18:40:56.803621	2	MARK_RAN	8:1ecb330f30986693d1cba9ab579fa219	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.8.0	\N	\N	0140856533
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2024-10-28 18:40:56.832701	3	EXECUTED	8:cb7ace19bc6d959f305605d255d4c843	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	4.8.0	\N	\N	0140856533
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2024-10-28 18:40:56.835584	4	EXECUTED	8:80230013e961310e6872e871be424a63	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	4.8.0	\N	\N	0140856533
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2024-10-28 18:40:56.893918	5	EXECUTED	8:67f4c20929126adc0c8e9bf48279d244	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.8.0	\N	\N	0140856533
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2024-10-28 18:40:56.895795	6	MARK_RAN	8:7311018b0b8179ce14628ab412bb6783	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.8.0	\N	\N	0140856533
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2024-10-28 18:40:56.948827	7	EXECUTED	8:037ba1216c3640f8785ee6b8e7c8e3c1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.8.0	\N	\N	0140856533
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2024-10-28 18:40:56.951048	8	MARK_RAN	8:7fe6ffe4af4df289b3157de32c624263	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.8.0	\N	\N	0140856533
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2024-10-28 18:40:56.954106	9	EXECUTED	8:9c136bc3187083a98745c7d03bc8a303	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2024-10-28 18:40:57.010738	10	EXECUTED	8:b5f09474dca81fb56a97cf5b6553d331	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	4.8.0	\N	\N	0140856533
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2024-10-28 18:40:57.044862	11	EXECUTED	8:ca924f31bd2a3b219fdcfe78c82dacf4	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.8.0	\N	\N	0140856533
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2024-10-28 18:40:57.046787	12	MARK_RAN	8:8acad7483e106416bcfa6f3b824a16cd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.8.0	\N	\N	0140856533
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2024-10-28 18:40:57.05751	13	EXECUTED	8:9b1266d17f4f87c78226f5055408fd5e	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.8.0	\N	\N	0140856533
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2024-10-28 18:40:57.070053	14	EXECUTED	8:d80ec4ab6dbfe573550ff72396c7e910	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	4.8.0	\N	\N	0140856533
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2024-10-28 18:40:57.071592	15	MARK_RAN	8:d86eb172171e7c20b9c849b584d147b2	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	4.8.0	\N	\N	0140856533
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2024-10-28 18:40:57.073123	16	MARK_RAN	8:5735f46f0fa60689deb0ecdc2a0dea22	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2024-10-28 18:40:57.074419	17	EXECUTED	8:d41d8cd98f00b204e9800998ecf8427e	empty		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2024-10-28 18:40:57.102686	18	EXECUTED	8:5c1a8fd2014ac7fc43b90a700f117b23	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	4.8.0	\N	\N	0140856533
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2024-10-28 18:40:57.128136	19	EXECUTED	8:1f6c2c2dfc362aff4ed75b3f0ef6b331	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.8.0	\N	\N	0140856533
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2024-10-28 18:40:57.131019	20	EXECUTED	8:dee9246280915712591f83a127665107	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2024-10-28 18:40:57.419358	45	EXECUTED	8:a164ae073c56ffdbc98a615493609a52	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	4.8.0	\N	\N	0140856533
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2024-10-28 18:40:57.132502	21	MARK_RAN	8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.8.0	\N	\N	0140856533
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2024-10-28 18:40:57.133922	22	MARK_RAN	8:dee9246280915712591f83a127665107	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2024-10-28 18:40:57.146669	23	EXECUTED	8:d9fa18ffa355320395b86270680dd4fe	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	4.8.0	\N	\N	0140856533
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2024-10-28 18:40:57.150073	24	EXECUTED	8:90cff506fedb06141ffc1c71c4a1214c	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.8.0	\N	\N	0140856533
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2024-10-28 18:40:57.151434	25	MARK_RAN	8:11a788aed4961d6d29c427c063af828c	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.8.0	\N	\N	0140856533
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2024-10-28 18:40:57.174345	26	EXECUTED	8:a4218e51e1faf380518cce2af5d39b43	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	4.8.0	\N	\N	0140856533
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2024-10-28 18:40:57.220276	27	EXECUTED	8:d9e9a1bfaa644da9952456050f07bbdc	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	4.8.0	\N	\N	0140856533
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2024-10-28 18:40:57.222236	28	EXECUTED	8:d1bf991a6163c0acbfe664b615314505	update tableName=RESOURCE_SERVER_POLICY		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2024-10-28 18:40:57.262917	29	EXECUTED	8:88a743a1e87ec5e30bf603da68058a8c	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	4.8.0	\N	\N	0140856533
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2024-10-28 18:40:57.271088	30	EXECUTED	8:c5517863c875d325dea463d00ec26d7a	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	4.8.0	\N	\N	0140856533
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2024-10-28 18:40:57.28216	31	EXECUTED	8:ada8b4833b74a498f376d7136bc7d327	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	4.8.0	\N	\N	0140856533
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2024-10-28 18:40:57.284917	32	EXECUTED	8:b9b73c8ea7299457f99fcbb825c263ba	customChange		\N	4.8.0	\N	\N	0140856533
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2024-10-28 18:40:57.288359	33	EXECUTED	8:07724333e625ccfcfc5adc63d57314f3	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	4.8.0	\N	\N	0140856533
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2024-10-28 18:40:57.289703	34	MARK_RAN	8:8b6fd445958882efe55deb26fc541a7b	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.8.0	\N	\N	0140856533
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2024-10-28 18:40:57.306353	35	EXECUTED	8:29b29cfebfd12600897680147277a9d7	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.8.0	\N	\N	0140856533
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2024-10-28 18:40:57.30932	36	EXECUTED	8:73ad77ca8fd0410c7f9f15a471fa52bc	addColumn tableName=REALM		\N	4.8.0	\N	\N	0140856533
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2024-10-28 18:40:57.313285	37	EXECUTED	8:64f27a6fdcad57f6f9153210f2ec1bdb	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.8.0	\N	\N	0140856533
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2024-10-28 18:40:57.315833	38	EXECUTED	8:27180251182e6c31846c2ddab4bc5781	addColumn tableName=FED_USER_CONSENT		\N	4.8.0	\N	\N	0140856533
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2024-10-28 18:40:57.318254	39	EXECUTED	8:d56f201bfcfa7a1413eb3e9bc02978f9	addColumn tableName=IDENTITY_PROVIDER		\N	4.8.0	\N	\N	0140856533
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2024-10-28 18:40:57.31953	40	MARK_RAN	8:91f5522bf6afdc2077dfab57fbd3455c	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	4.8.0	\N	\N	0140856533
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2024-10-28 18:40:57.320817	41	MARK_RAN	8:0f01b554f256c22caeb7d8aee3a1cdc8	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	4.8.0	\N	\N	0140856533
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2024-10-28 18:40:57.323556	42	EXECUTED	8:ab91cf9cee415867ade0e2df9651a947	customChange		\N	4.8.0	\N	\N	0140856533
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2024-10-28 18:40:57.413784	43	EXECUTED	8:ceac9b1889e97d602caf373eadb0d4b7	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	4.8.0	\N	\N	0140856533
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2024-10-28 18:40:57.416407	44	EXECUTED	8:84b986e628fe8f7fd8fd3c275c5259f2	addColumn tableName=USER_ENTITY		\N	4.8.0	\N	\N	0140856533
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2024-10-28 18:40:57.422775	46	EXECUTED	8:70a2b4f1f4bd4dbf487114bdb1810e64	customChange		\N	4.8.0	\N	\N	0140856533
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2024-10-28 18:40:57.424022	47	MARK_RAN	8:7be68b71d2f5b94b8df2e824f2860fa2	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	4.8.0	\N	\N	0140856533
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2024-10-28 18:40:57.450858	48	EXECUTED	8:bab7c631093c3861d6cf6144cd944982	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	4.8.0	\N	\N	0140856533
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2024-10-28 18:40:57.453652	49	EXECUTED	8:fa809ac11877d74d76fe40869916daad	addColumn tableName=REALM		\N	4.8.0	\N	\N	0140856533
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2024-10-28 18:40:57.482912	50	EXECUTED	8:fac23540a40208f5f5e326f6ceb4d291	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	4.8.0	\N	\N	0140856533
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2024-10-28 18:40:57.504907	51	EXECUTED	8:2612d1b8a97e2b5588c346e817307593	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	4.8.0	\N	\N	0140856533
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2024-10-28 18:40:57.507242	52	EXECUTED	8:9842f155c5db2206c88bcb5d1046e941	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2024-10-28 18:40:57.509136	53	EXECUTED	8:2e12e06e45498406db72d5b3da5bbc76	update tableName=REALM		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2024-10-28 18:40:57.511072	54	EXECUTED	8:33560e7c7989250c40da3abdabdc75a4	update tableName=CLIENT		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2024-10-28 18:40:57.515305	55	EXECUTED	8:87a8d8542046817a9107c7eb9cbad1cd	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	4.8.0	\N	\N	0140856533
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2024-10-28 18:40:57.518254	56	EXECUTED	8:3ea08490a70215ed0088c273d776311e	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	4.8.0	\N	\N	0140856533
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2024-10-28 18:40:57.531468	57	EXECUTED	8:2d56697c8723d4592ab608ce14b6ed68	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	4.8.0	\N	\N	0140856533
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2024-10-28 18:40:57.588543	58	EXECUTED	8:3e423e249f6068ea2bbe48bf907f9d86	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	4.8.0	\N	\N	0140856533
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2024-10-28 18:40:57.6032	59	EXECUTED	8:15cabee5e5df0ff099510a0fc03e4103	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	4.8.0	\N	\N	0140856533
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2024-10-28 18:40:57.606701	60	EXECUTED	8:4b80200af916ac54d2ffbfc47918ab0e	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	4.8.0	\N	\N	0140856533
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2024-10-28 18:40:57.611241	61	EXECUTED	8:66564cd5e168045d52252c5027485bbb	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	4.8.0	\N	\N	0140856533
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2024-10-28 18:40:57.61509	62	EXECUTED	8:1c7064fafb030222be2bd16ccf690f6f	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	4.8.0	\N	\N	0140856533
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2024-10-28 18:40:57.617254	63	EXECUTED	8:2de18a0dce10cdda5c7e65c9b719b6e5	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	4.8.0	\N	\N	0140856533
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2024-10-28 18:40:57.619024	64	EXECUTED	8:03e413dd182dcbd5c57e41c34d0ef682	update tableName=REQUIRED_ACTION_PROVIDER		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2024-10-28 18:40:57.6207	65	EXECUTED	8:d27b42bb2571c18fbe3fe4e4fb7582a7	update tableName=RESOURCE_SERVER_RESOURCE		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2024-10-28 18:40:57.629173	66	EXECUTED	8:698baf84d9fd0027e9192717c2154fb8	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	4.8.0	\N	\N	0140856533
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2024-10-28 18:40:57.632926	67	EXECUTED	8:ced8822edf0f75ef26eb51582f9a821a	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	4.8.0	\N	\N	0140856533
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2024-10-28 18:40:57.635917	68	EXECUTED	8:f0abba004cf429e8afc43056df06487d	addColumn tableName=REALM		\N	4.8.0	\N	\N	0140856533
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2024-10-28 18:40:57.642411	69	EXECUTED	8:6662f8b0b611caa359fcf13bf63b4e24	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	4.8.0	\N	\N	0140856533
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2024-10-28 18:40:57.645702	70	EXECUTED	8:9e6b8009560f684250bdbdf97670d39e	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	4.8.0	\N	\N	0140856533
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2024-10-28 18:40:57.648139	71	EXECUTED	8:4223f561f3b8dc655846562b57bb502e	addColumn tableName=RESOURCE_SERVER		\N	4.8.0	\N	\N	0140856533
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2024-10-28 18:40:57.65239	72	EXECUTED	8:215a31c398b363ce383a2b301202f29e	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	4.8.0	\N	\N	0140856533
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2024-10-28 18:40:57.656071	73	EXECUTED	8:83f7a671792ca98b3cbd3a1a34862d3d	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2024-10-28 18:40:57.657379	74	MARK_RAN	8:f58ad148698cf30707a6efbdf8061aa7	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.8.0	\N	\N	0140856533
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2024-10-28 18:40:57.667586	75	EXECUTED	8:79e4fd6c6442980e58d52ffc3ee7b19c	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	4.8.0	\N	\N	0140856533
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2024-10-28 18:40:57.672687	76	EXECUTED	8:87af6a1e6d241ca4b15801d1f86a297d	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.8.0	\N	\N	0140856533
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2024-10-28 18:40:57.675035	77	EXECUTED	8:b44f8d9b7b6ea455305a6d72a200ed15	addColumn tableName=CLIENT		\N	4.8.0	\N	\N	0140856533
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2024-10-28 18:40:57.676257	78	MARK_RAN	8:2d8ed5aaaeffd0cb004c046b4a903ac5	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	4.8.0	\N	\N	0140856533
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2024-10-28 18:40:57.686452	79	EXECUTED	8:e290c01fcbc275326c511633f6e2acde	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	4.8.0	\N	\N	0140856533
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2024-10-28 18:40:57.687735	80	MARK_RAN	8:c9db8784c33cea210872ac2d805439f8	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	4.8.0	\N	\N	0140856533
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2024-10-28 18:40:57.691476	81	EXECUTED	8:95b676ce8fc546a1fcfb4c92fae4add5	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	4.8.0	\N	\N	0140856533
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2024-10-28 18:40:57.692642	82	MARK_RAN	8:38a6b2a41f5651018b1aca93a41401e5	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.8.0	\N	\N	0140856533
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2024-10-28 18:40:57.695266	83	EXECUTED	8:3fb99bcad86a0229783123ac52f7609c	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	4.8.0	\N	\N	0140856533
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2024-10-28 18:40:57.696452	84	MARK_RAN	8:64f27a6fdcad57f6f9153210f2ec1bdb	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.8.0	\N	\N	0140856533
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2024-10-28 18:40:57.699967	85	EXECUTED	8:ab4f863f39adafd4c862f7ec01890abc	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	4.8.0	\N	\N	0140856533
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2024-10-28 18:40:57.702954	86	EXECUTED	8:13c419a0eb336e91ee3a3bf8fda6e2a7	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	4.8.0	\N	\N	0140856533
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2024-10-28 18:40:57.706911	87	EXECUTED	8:e3fb1e698e0471487f51af1ed80fe3ac	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	4.8.0	\N	\N	0140856533
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2024-10-28 18:40:57.712809	88	EXECUTED	8:babadb686aab7b56562817e60bf0abd0	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	4.8.0	\N	\N	0140856533
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.71686	89	EXECUTED	8:72d03345fda8e2f17093d08801947773	addColumn tableName=REALM; customChange		\N	4.8.0	\N	\N	0140856533
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.720216	90	EXECUTED	8:61c9233951bd96ffecd9ba75f7d978a4	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	4.8.0	\N	\N	0140856533
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.724419	91	EXECUTED	8:ea82e6ad945cec250af6372767b25525	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.8.0	\N	\N	0140856533
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.731892	92	EXECUTED	8:d3f4a33f41d960ddacd7e2ef30d126b3	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	4.8.0	\N	\N	0140856533
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.733235	93	MARK_RAN	8:1284a27fbd049d65831cb6fc07c8a783	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	4.8.0	\N	\N	0140856533
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.73826	94	EXECUTED	8:9d11b619db2ae27c25853b8a37cd0dea	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	4.8.0	\N	\N	0140856533
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.73957	95	MARK_RAN	8:3002bb3997451bb9e8bac5c5cd8d6327	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	4.8.0	\N	\N	0140856533
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2024-10-28 18:40:57.743076	96	EXECUTED	8:dfbee0d6237a23ef4ccbb7a4e063c163	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	4.8.0	\N	\N	0140856533
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.750191	97	EXECUTED	8:75f3e372df18d38c62734eebb986b960	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.8.0	\N	\N	0140856533
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.751489	98	MARK_RAN	8:7fee73eddf84a6035691512c85637eef	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.757966	99	MARK_RAN	8:7a11134ab12820f999fbf3bb13c3adc8	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.762055	100	EXECUTED	8:c0f6eaac1f3be773ffe54cb5b8482b70	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.763441	101	MARK_RAN	8:18186f0008b86e0f0f49b0c4d0e842ac	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.767214	102	EXECUTED	8:09c2780bcb23b310a7019d217dc7b433	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	4.8.0	\N	\N	0140856533
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2024-10-28 18:40:57.770139	103	EXECUTED	8:276a44955eab693c970a42880197fff2	customChange		\N	4.8.0	\N	\N	0140856533
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2024-10-28 18:40:57.773791	104	EXECUTED	8:ba8ee3b694d043f2bfc1a1079d0760d7	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	4.8.0	\N	\N	0140856533
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2024-10-28 18:40:57.777579	105	EXECUTED	8:5e06b1d75f5d17685485e610c2851b17	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	4.8.0	\N	\N	0140856533
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2024-10-28 18:40:57.781395	106	EXECUTED	8:4b80546c1dc550ac552ee7b24a4ab7c0	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	4.8.0	\N	\N	0140856533
19.0.0-10135	keycloak	META-INF/jpa-changelog-19.0.0.xml	2024-10-28 18:40:57.784058	107	EXECUTED	8:af510cd1bb2ab6339c45372f3e491696	customChange		\N	4.8.0	\N	\N	0140856533
20.0.0-12964-supported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2024-10-28 18:40:57.787992	108	EXECUTED	8:05c99fc610845ef66ee812b7921af0ef	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.8.0	\N	\N	0140856533
20.0.0-12964-unsupported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2024-10-28 18:40:57.789319	109	MARK_RAN	8:314e803baf2f1ec315b3464e398b8247	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.8.0	\N	\N	0140856533
client-attributes-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-20.0.0.xml	2024-10-28 18:40:57.792869	110	EXECUTED	8:56e4677e7e12556f70b604c573840100	addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES		\N	4.8.0	\N	\N	0140856533
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
1001	f	\N	\N
\.


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
7279654e-2ddf-47fc-8f7d-a9c014f639c6	ea84b0cd-f998-4a1c-aeaa-c4ab31d3d804	f
7279654e-2ddf-47fc-8f7d-a9c014f639c6	0ee21e37-41ca-4163-bcc4-92a65c4db897	t
7279654e-2ddf-47fc-8f7d-a9c014f639c6	8c32ad36-ea17-446d-8d40-aba052f82f81	t
7279654e-2ddf-47fc-8f7d-a9c014f639c6	40c3aaaf-313a-460d-a70f-99404618fa3f	t
7279654e-2ddf-47fc-8f7d-a9c014f639c6	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea	f
7279654e-2ddf-47fc-8f7d-a9c014f639c6	40edbe5c-cd1e-4228-b785-74cadfec23c0	f
7279654e-2ddf-47fc-8f7d-a9c014f639c6	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6	t
7279654e-2ddf-47fc-8f7d-a9c014f639c6	c05bc878-ca6c-492f-b990-5b9e052bf211	t
7279654e-2ddf-47fc-8f7d-a9c014f639c6	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7	f
7279654e-2ddf-47fc-8f7d-a9c014f639c6	d2570312-0f1f-4157-aefb-8773f926619c	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	d8e8e40c-e519-4ede-86b0-d41216dc4ee3	f
6abe3626-afce-40f0-b6c4-b9d31c2c882c	65f77c6e-37f4-471f-8061-42980e26d031	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	f288bc4b-03da-44d3-a976-3e777c84dc41	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	f10e2b88-61c4-4e35-b9e7-436af2a4c342	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e	f
6abe3626-afce-40f0-b6c4-b9d31c2c882c	8a918f21-ddc6-466a-b6b7-0990bc920e51	f
6abe3626-afce-40f0-b6c4-b9d31c2c882c	2674243b-30c9-4201-b692-e88e501d4b67	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	4c5b1224-7a6e-4136-a4f1-131a87b1de4f	t
6abe3626-afce-40f0-b6c4-b9d31c2c882c	dfde669b-5a5a-458b-a56e-41d19bba8aa3	f
6abe3626-afce-40f0-b6c4-b9d31c2c882c	9fe9a29c-b0c8-4019-8fd9-3521d4053e89	t
\.


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id) FROM stdin;
\.


--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value) FROM stdin;
\.


--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
\.


--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only) FROM stdin;
\.


--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.keycloak_group (id, name, parent_group, realm_id) FROM stdin;
\.


--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
f24f0717-23d9-4364-b3cf-7927c16a2223	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	${role_default-roles}	default-roles-master	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	\N
1252f4fe-2d2d-453a-9dc4-b53cce3f9580	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	${role_create-realm}	create-realm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	\N
c983b233-1311-4b14-977d-ff4edf4ae22e	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	${role_admin}	admin	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	\N
248ad6f0-3b95-49f9-bb12-7a89177d4f19	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_create-client}	create-client	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
f1ad4650-dcd8-440a-afc9-f6b6b5f8f4a7	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-realm}	view-realm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
246f42b6-120e-49e9-8154-5ecaf444b31d	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-users}	view-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
ca43024c-33cf-49b7-83fc-360d64706239	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-clients}	view-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
5911dee3-0169-4bd4-a190-82cc6422a1ff	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-events}	view-events	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
76d3096e-b901-44b4-849d-423d3e85c797	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-identity-providers}	view-identity-providers	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
65af2af8-58b7-4494-ade8-49f320a23209	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_view-authorization}	view-authorization	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
12e28533-2cc0-493f-ab4c-182ba2f7d7ae	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-realm}	manage-realm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
1a1c8500-51df-4f23-8849-7d8d55e83b17	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-users}	manage-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
0b02ef8b-5993-4387-9f6c-cba423ffce32	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-clients}	manage-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
3b5cb451-3620-4609-b2f6-31ab0e01153c	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-events}	manage-events	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
6596cc1d-1ada-4fe0-9324-7ca507560fc7	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-identity-providers}	manage-identity-providers	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
55d77790-9a17-4441-b898-45dc4627e70b	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_manage-authorization}	manage-authorization	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
b1f6066c-c215-4748-b934-ecb293ab5f8b	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_query-users}	query-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
01914ec3-7eee-4dac-a6d4-f6fa7c30eacf	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_query-clients}	query-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
8f956f7f-0566-4a58-b736-8f04b6dcb0f3	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_query-realms}	query-realms	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
5e9d9eb4-5acb-4a5a-98a4-0a52fddf6c4f	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_query-groups}	query-groups	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
1293272b-a940-4200-9a28-6609382b8365	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_view-profile}	view-profile	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
2906a673-ba0d-45b9-8969-478fd8b9fdc1	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_manage-account}	manage-account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
66940a75-16f2-42eb-858a-c32884843928	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_manage-account-links}	manage-account-links	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
0933f412-a601-4653-a6d4-bc5485ebfa77	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_view-applications}	view-applications	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
ce34f1e5-a938-4c86-93dd-985a2c15fffe	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_view-consent}	view-consent	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
cd2166ff-03ba-4950-a8b0-a772b7f1e2b9	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_manage-consent}	manage-consent	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
6a47325a-009d-4433-a1d1-b38f976607aa	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_view-groups}	view-groups	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
88e45865-4314-4682-9862-5a427125b6d8	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	t	${role_delete-account}	delete-account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	3ea5ab99-78a8-4556-9af0-768f51a2a8ce	\N
bff6bc06-103c-4569-976e-b2cf92c8cf0a	8d2a67a2-afdd-42d5-8637-f34273d2cc39	t	${role_read-token}	read-token	7279654e-2ddf-47fc-8f7d-a9c014f639c6	8d2a67a2-afdd-42d5-8637-f34273d2cc39	\N
9874b974-03ce-49d2-afac-bf6b0e7b0fdd	dfae48ef-2265-4f99-a1d9-696f59c76972	t	${role_impersonation}	impersonation	7279654e-2ddf-47fc-8f7d-a9c014f639c6	dfae48ef-2265-4f99-a1d9-696f59c76972	\N
03784a5b-7382-4f65-9018-503e84f931bc	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	${role_offline-access}	offline_access	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	\N
3ef6cffe-6994-4396-b4b8-3bc7c24ab0b4	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	${role_uma_authorization}	uma_authorization	7279654e-2ddf-47fc-8f7d-a9c014f639c6	\N	\N
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	${role_default-roles}	default-roles-agregator	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N	\N
92830c15-1035-408a-a95e-c629de26bd84	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_create-client}	create-client	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
dbde5a06-5511-47ab-acb8-9833745e2f02	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-realm}	view-realm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
0b2a847b-821a-46cb-8c95-f4651078f18c	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-users}	view-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
bc1e1995-edb4-43ed-9396-fc0c70b51c3b	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-clients}	view-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
7ab2f881-556e-488b-a939-db830d0d87cc	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-events}	view-events	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
35e53077-cee7-4b6c-a100-e40111dabfd3	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-identity-providers}	view-identity-providers	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
0fe94a80-a707-49c6-aacd-0cf3f63a4d30	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_view-authorization}	view-authorization	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
14c53f04-6895-496f-bb68-696ab16f7a5d	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-realm}	manage-realm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
af2b12f2-9322-427d-a1f7-5070a38c5fa0	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-users}	manage-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
9f85eb5d-d409-4f16-b9cd-1096496e15ab	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-clients}	manage-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
4b4d57a0-1b44-4718-a1fb-52f1498d39ad	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-events}	manage-events	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
c3a5bc8e-8084-4d3f-95bb-92a1fc3615a2	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-identity-providers}	manage-identity-providers	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
9c94ef85-9148-4588-8c6c-730617147c2a	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_manage-authorization}	manage-authorization	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
b8ffe434-7c2c-4fc2-af2a-f5f0e3029d66	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_query-users}	query-users	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
a9c811b2-0c90-458a-9003-a4a7c1efab36	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_query-clients}	query-clients	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
a5f8d190-822e-43de-93d9-d2b79a871a77	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_query-realms}	query-realms	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
8a7399b2-916b-48da-bbf6-49ca4f1affcc	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_query-groups}	query-groups	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
d0708115-69d0-4e9b-8ed7-0cd6859e8e22	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_realm-admin}	realm-admin	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
4ee876f8-b065-4001-bcde-38d17cf7db87	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_create-client}	create-client	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
a16f6549-845f-469b-8039-828c52af88c5	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-realm}	view-realm	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
b10a89df-a959-40fa-9281-909e87f28e30	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-users}	view-users	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
dfc6868f-1d38-45ce-aa33-2a8f4e638462	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-clients}	view-clients	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
a4a9fbd4-9155-4f5f-9d7e-9dc851cbac4b	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-events}	view-events	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
da3aeb16-e8b5-4cbf-9604-395064ab6e0c	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-identity-providers}	view-identity-providers	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
2fdef9c2-9fc5-4c27-b9b8-e59bba2be859	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_view-authorization}	view-authorization	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
3554cfc6-9808-491c-a7df-3d99502b80f3	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-realm}	manage-realm	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
e4f8100b-2e63-43d0-8fcc-16229215b964	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-users}	manage-users	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
6dd5873b-8beb-4d8c-8455-cf8834add102	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-clients}	manage-clients	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
8b97c39e-2703-4623-b17d-293f6b8d3ced	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-events}	manage-events	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
71671065-45e4-42bb-b566-fb74515e4270	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-identity-providers}	manage-identity-providers	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
184c83d1-5d74-4f72-b8bb-b44a220ee5d3	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_manage-authorization}	manage-authorization	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
4de44318-d1e4-4891-bf1d-132954e07e23	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_query-users}	query-users	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
8eb8d717-07b3-436f-9f82-c900b21f12ab	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_query-clients}	query-clients	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
f2b10f11-d0fc-4724-a75f-813cf912d477	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_query-realms}	query-realms	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
7bf396de-3b98-40aa-b1d8-73194238eca1	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_query-groups}	query-groups	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
9bcf3ae2-608b-491a-94dd-52dda894237e	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_view-profile}	view-profile	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
9cac36f5-4768-4d84-9fb2-bc4174b9d7ed	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_manage-account}	manage-account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
b42a0bb3-8983-4a4e-a489-a1fdedf5f8e0	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_manage-account-links}	manage-account-links	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
726fc6d0-7dca-4824-a5a7-20b6e089ac31	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_view-applications}	view-applications	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
15d15e77-b55e-447c-a138-43b7a75919a8	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_view-consent}	view-consent	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
b7ed6cb6-1099-4368-ba74-4c7197ad051c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_manage-consent}	manage-consent	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
0b1819fc-c4a0-4515-b527-cf4f8028d8ab	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_view-groups}	view-groups	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
549bf0c9-c067-434a-b71e-d2911d8f6939	480c6fbf-9e2c-4582-8da2-947d40fad2e5	t	${role_delete-account}	delete-account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	480c6fbf-9e2c-4582-8da2-947d40fad2e5	\N
e277a8e3-f31c-4a13-93d8-18afe96caeb1	297c604f-acff-4281-9db3-920bc322ebf7	t	${role_impersonation}	impersonation	7279654e-2ddf-47fc-8f7d-a9c014f639c6	297c604f-acff-4281-9db3-920bc322ebf7	\N
955ac55d-8093-46f6-a356-3b2101c1eccb	24b9a366-73aa-4d5f-8359-301833a3eaff	t	${role_impersonation}	impersonation	6abe3626-afce-40f0-b6c4-b9d31c2c882c	24b9a366-73aa-4d5f-8359-301833a3eaff	\N
29d3a951-a9ae-42d5-b6c1-91555fe260f3	0f20ba1f-fe05-4b79-9146-56d5f9c226c8	t	${role_read-token}	read-token	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0f20ba1f-fe05-4b79-9146-56d5f9c226c8	\N
d0888358-b458-402d-959a-18ed339f0226	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	${role_offline-access}	offline_access	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N	\N
51c363b9-ab80-40b5-8b2b-564cf69e73dc	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	${role_uma_authorization}	uma_authorization	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N	\N
f46a535f-97a7-4be3-be01-24229899d5d7	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f		admin	6abe3626-afce-40f0-b6c4-b9d31c2c882c	\N	\N
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.migration_model (id, version, update_time) FROM stdin;
3oiqe	20.0.1	1730140857
\.


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh) FROM stdin;
\.


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
6f54f23d-d320-4f0d-807c-a32263c20d09	audience resolve	openid-connect	oidc-audience-resolve-mapper	c082aa51-c380-4a40-aa4e-35e70a4c8ea5	\N
c2760e9d-ca62-4b96-8072-9e2df2040ade	locale	openid-connect	oidc-usermodel-attribute-mapper	df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	\N
36c310e0-d416-4be4-93b3-1ebffd299123	role list	saml	saml-role-list-mapper	\N	0ee21e37-41ca-4163-bcc4-92a65c4db897
5196474e-8e22-45c6-beb7-222bf36acf11	full name	openid-connect	oidc-full-name-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
543f900a-1ecc-4777-b38e-76b64839db6c	family name	openid-connect	oidc-usermodel-property-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
5fad8b2c-8ce3-49da-b000-917f62d15ea3	given name	openid-connect	oidc-usermodel-property-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
a5d56a4b-f254-4fdb-950f-74b671af22c1	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
6d547269-0fed-4eb6-8c33-37c5470992ee	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
f7231ad8-8299-4e8a-a7a6-10a3452a932b	username	openid-connect	oidc-usermodel-property-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
2edf6194-698f-491f-b47e-808ab3254f03	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
b11b905c-be57-4c91-9c20-1c5861cf5bd3	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	website	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
e19a7ac5-a924-4e36-a142-bf68e116fded	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
6a4d32d0-f897-41b1-9b99-47b26dfd380a	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
b522423a-ad18-47a9-861e-20b536654702	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
04607d1b-e530-4f04-a363-d3473cdf4512	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	8c32ad36-ea17-446d-8d40-aba052f82f81
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	email	openid-connect	oidc-usermodel-property-mapper	\N	40c3aaaf-313a-460d-a70f-99404618fa3f
f4319b23-a93e-427e-b281-451b0cc87368	email verified	openid-connect	oidc-usermodel-property-mapper	\N	40c3aaaf-313a-460d-a70f-99404618fa3f
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	address	openid-connect	oidc-address-mapper	\N	02e6aeea-3c93-4c9e-89fa-d17ff1a838ea
68ecbefb-96fb-4d10-827e-853591f097c7	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	40edbe5c-cd1e-4228-b785-74cadfec23c0
4927f0a6-341f-47ff-9a74-32506c99388a	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	40edbe5c-cd1e-4228-b785-74cadfec23c0
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6
a227b4d3-dce4-4299-a89b-997f89e977e6	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6
8c9b61fb-0646-4829-8976-e09e80b5c5a3	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	b44ca5e5-3bb2-4e49-80a2-6d74a2fc8fa6
33a58052-b91e-4b90-b402-850fa1b3c4ef	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	c05bc878-ca6c-492f-b990-5b9e052bf211
358643ae-5ff4-45fb-9eac-712898172b30	upn	openid-connect	oidc-usermodel-property-mapper	\N	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	a5b1a48b-7d0d-4467-9fd6-415cc2e002d7
1ada89d1-fb02-4004-b55a-f68bb8c770a4	acr loa level	openid-connect	oidc-acr-mapper	\N	d2570312-0f1f-4157-aefb-8773f926619c
3a6968c5-fb77-4129-adeb-215ef68b342e	audience resolve	openid-connect	oidc-audience-resolve-mapper	69131221-02a3-46b7-980b-e32f42b06fe1	\N
7a38be99-1857-49ff-a261-9118194086c3	role list	saml	saml-role-list-mapper	\N	65f77c6e-37f4-471f-8061-42980e26d031
376ec5c1-b127-4279-a328-dd542b7c96d7	full name	openid-connect	oidc-full-name-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	family name	openid-connect	oidc-usermodel-property-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
734bab82-54b5-4528-9f35-1bb8ee5c67c3	given name	openid-connect	oidc-usermodel-property-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
635d7eba-4591-4b4c-933a-869ad3cbbad2	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
aa2d4125-8e05-4647-ba0b-998a0ce58f61	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	username	openid-connect	oidc-usermodel-property-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
dcdd9359-8f8d-4564-a3d0-74042894b0c6	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
d93065a5-2502-4c00-acbe-f12472cfd95c	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
d26d96ba-e779-465d-abf9-9b4fd9f8799e	website	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
16a0e246-c6c1-4f33-abd6-f77ddaee437e	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
3c77dbf1-7f28-4fea-b994-65521b845098	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
4bc22974-6d07-4356-ada2-a23cdc90f634	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
f2e9cfac-e498-4482-a8a5-f120c5900f3e	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
7ce931e3-2711-4615-8333-b014d6ef8890	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	f288bc4b-03da-44d3-a976-3e777c84dc41
fed73f89-6dab-4f67-83c3-81b54c8d4885	email	openid-connect	oidc-usermodel-property-mapper	\N	f10e2b88-61c4-4e35-b9e7-436af2a4c342
d61a228d-01a8-4b24-a81d-a65f6d91b082	email verified	openid-connect	oidc-usermodel-property-mapper	\N	f10e2b88-61c4-4e35-b9e7-436af2a4c342
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	address	openid-connect	oidc-address-mapper	\N	99bd6c7f-0f52-4efa-ab5b-a1c685b5b42e
42c1cec7-f498-4dae-808f-4981c54966fd	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	8a918f21-ddc6-466a-b6b7-0990bc920e51
a01ebe9c-f793-4d09-aa46-7ab494e55b67	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	8a918f21-ddc6-466a-b6b7-0990bc920e51
f864d4c4-93af-4893-92b9-cd0ad043ea72	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	2674243b-30c9-4201-b692-e88e501d4b67
39727760-c1a2-4500-9954-3d858e7fad78	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	2674243b-30c9-4201-b692-e88e501d4b67
f2706c9a-6dd7-49e7-9cb4-bd14157c7227	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	2674243b-30c9-4201-b692-e88e501d4b67
5f95405e-224a-4092-94fb-7d1492503f0e	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	4c5b1224-7a6e-4136-a4f1-131a87b1de4f
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	upn	openid-connect	oidc-usermodel-property-mapper	\N	dfde669b-5a5a-458b-a56e-41d19bba8aa3
86028238-bab5-4bb3-b054-f09a5fb82305	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	dfde669b-5a5a-458b-a56e-41d19bba8aa3
8063197d-3777-420e-99a3-f3ed089ce541	acr loa level	openid-connect	oidc-acr-mapper	\N	9fe9a29c-b0c8-4019-8fd9-3521d4053e89
754a9961-cd60-4582-a7c2-151d807b5531	locale	openid-connect	oidc-usermodel-attribute-mapper	015e83ff-f7b2-4219-b029-5ffd2f507798	\N
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
c2760e9d-ca62-4b96-8072-9e2df2040ade	true	userinfo.token.claim
c2760e9d-ca62-4b96-8072-9e2df2040ade	locale	user.attribute
c2760e9d-ca62-4b96-8072-9e2df2040ade	true	id.token.claim
c2760e9d-ca62-4b96-8072-9e2df2040ade	true	access.token.claim
c2760e9d-ca62-4b96-8072-9e2df2040ade	locale	claim.name
c2760e9d-ca62-4b96-8072-9e2df2040ade	String	jsonType.label
36c310e0-d416-4be4-93b3-1ebffd299123	false	single
36c310e0-d416-4be4-93b3-1ebffd299123	Basic	attribute.nameformat
36c310e0-d416-4be4-93b3-1ebffd299123	Role	attribute.name
04607d1b-e530-4f04-a363-d3473cdf4512	true	userinfo.token.claim
04607d1b-e530-4f04-a363-d3473cdf4512	updatedAt	user.attribute
04607d1b-e530-4f04-a363-d3473cdf4512	true	id.token.claim
04607d1b-e530-4f04-a363-d3473cdf4512	true	access.token.claim
04607d1b-e530-4f04-a363-d3473cdf4512	updated_at	claim.name
04607d1b-e530-4f04-a363-d3473cdf4512	long	jsonType.label
2edf6194-698f-491f-b47e-808ab3254f03	true	userinfo.token.claim
2edf6194-698f-491f-b47e-808ab3254f03	profile	user.attribute
2edf6194-698f-491f-b47e-808ab3254f03	true	id.token.claim
2edf6194-698f-491f-b47e-808ab3254f03	true	access.token.claim
2edf6194-698f-491f-b47e-808ab3254f03	profile	claim.name
2edf6194-698f-491f-b47e-808ab3254f03	String	jsonType.label
5196474e-8e22-45c6-beb7-222bf36acf11	true	userinfo.token.claim
5196474e-8e22-45c6-beb7-222bf36acf11	true	id.token.claim
5196474e-8e22-45c6-beb7-222bf36acf11	true	access.token.claim
543f900a-1ecc-4777-b38e-76b64839db6c	true	userinfo.token.claim
543f900a-1ecc-4777-b38e-76b64839db6c	lastName	user.attribute
543f900a-1ecc-4777-b38e-76b64839db6c	true	id.token.claim
543f900a-1ecc-4777-b38e-76b64839db6c	true	access.token.claim
543f900a-1ecc-4777-b38e-76b64839db6c	family_name	claim.name
543f900a-1ecc-4777-b38e-76b64839db6c	String	jsonType.label
5fad8b2c-8ce3-49da-b000-917f62d15ea3	true	userinfo.token.claim
5fad8b2c-8ce3-49da-b000-917f62d15ea3	firstName	user.attribute
5fad8b2c-8ce3-49da-b000-917f62d15ea3	true	id.token.claim
5fad8b2c-8ce3-49da-b000-917f62d15ea3	true	access.token.claim
5fad8b2c-8ce3-49da-b000-917f62d15ea3	given_name	claim.name
5fad8b2c-8ce3-49da-b000-917f62d15ea3	String	jsonType.label
6a4d32d0-f897-41b1-9b99-47b26dfd380a	true	userinfo.token.claim
6a4d32d0-f897-41b1-9b99-47b26dfd380a	zoneinfo	user.attribute
6a4d32d0-f897-41b1-9b99-47b26dfd380a	true	id.token.claim
6a4d32d0-f897-41b1-9b99-47b26dfd380a	true	access.token.claim
6a4d32d0-f897-41b1-9b99-47b26dfd380a	zoneinfo	claim.name
6a4d32d0-f897-41b1-9b99-47b26dfd380a	String	jsonType.label
6d547269-0fed-4eb6-8c33-37c5470992ee	true	userinfo.token.claim
6d547269-0fed-4eb6-8c33-37c5470992ee	nickname	user.attribute
6d547269-0fed-4eb6-8c33-37c5470992ee	true	id.token.claim
6d547269-0fed-4eb6-8c33-37c5470992ee	true	access.token.claim
6d547269-0fed-4eb6-8c33-37c5470992ee	nickname	claim.name
6d547269-0fed-4eb6-8c33-37c5470992ee	String	jsonType.label
a5d56a4b-f254-4fdb-950f-74b671af22c1	true	userinfo.token.claim
a5d56a4b-f254-4fdb-950f-74b671af22c1	middleName	user.attribute
a5d56a4b-f254-4fdb-950f-74b671af22c1	true	id.token.claim
a5d56a4b-f254-4fdb-950f-74b671af22c1	true	access.token.claim
a5d56a4b-f254-4fdb-950f-74b671af22c1	middle_name	claim.name
a5d56a4b-f254-4fdb-950f-74b671af22c1	String	jsonType.label
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	true	userinfo.token.claim
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	gender	user.attribute
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	true	id.token.claim
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	true	access.token.claim
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	gender	claim.name
abe2f54f-daae-4ebc-a8b0-f94786b10d5a	String	jsonType.label
b11b905c-be57-4c91-9c20-1c5861cf5bd3	true	userinfo.token.claim
b11b905c-be57-4c91-9c20-1c5861cf5bd3	picture	user.attribute
b11b905c-be57-4c91-9c20-1c5861cf5bd3	true	id.token.claim
b11b905c-be57-4c91-9c20-1c5861cf5bd3	true	access.token.claim
b11b905c-be57-4c91-9c20-1c5861cf5bd3	picture	claim.name
b11b905c-be57-4c91-9c20-1c5861cf5bd3	String	jsonType.label
b522423a-ad18-47a9-861e-20b536654702	true	userinfo.token.claim
b522423a-ad18-47a9-861e-20b536654702	locale	user.attribute
b522423a-ad18-47a9-861e-20b536654702	true	id.token.claim
b522423a-ad18-47a9-861e-20b536654702	true	access.token.claim
b522423a-ad18-47a9-861e-20b536654702	locale	claim.name
b522423a-ad18-47a9-861e-20b536654702	String	jsonType.label
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	true	userinfo.token.claim
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	website	user.attribute
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	true	id.token.claim
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	true	access.token.claim
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	website	claim.name
dcce7801-2f15-4a08-9aa7-5841c93ff0c4	String	jsonType.label
e19a7ac5-a924-4e36-a142-bf68e116fded	true	userinfo.token.claim
e19a7ac5-a924-4e36-a142-bf68e116fded	birthdate	user.attribute
e19a7ac5-a924-4e36-a142-bf68e116fded	true	id.token.claim
e19a7ac5-a924-4e36-a142-bf68e116fded	true	access.token.claim
e19a7ac5-a924-4e36-a142-bf68e116fded	birthdate	claim.name
e19a7ac5-a924-4e36-a142-bf68e116fded	String	jsonType.label
f7231ad8-8299-4e8a-a7a6-10a3452a932b	true	userinfo.token.claim
f7231ad8-8299-4e8a-a7a6-10a3452a932b	username	user.attribute
f7231ad8-8299-4e8a-a7a6-10a3452a932b	true	id.token.claim
f7231ad8-8299-4e8a-a7a6-10a3452a932b	true	access.token.claim
f7231ad8-8299-4e8a-a7a6-10a3452a932b	preferred_username	claim.name
f7231ad8-8299-4e8a-a7a6-10a3452a932b	String	jsonType.label
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	true	userinfo.token.claim
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	email	user.attribute
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	true	id.token.claim
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	true	access.token.claim
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	email	claim.name
7238c1d9-b916-4bd3-b9f0-e5c38fc82867	String	jsonType.label
f4319b23-a93e-427e-b281-451b0cc87368	true	userinfo.token.claim
f4319b23-a93e-427e-b281-451b0cc87368	emailVerified	user.attribute
f4319b23-a93e-427e-b281-451b0cc87368	true	id.token.claim
f4319b23-a93e-427e-b281-451b0cc87368	true	access.token.claim
f4319b23-a93e-427e-b281-451b0cc87368	email_verified	claim.name
f4319b23-a93e-427e-b281-451b0cc87368	boolean	jsonType.label
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	formatted	user.attribute.formatted
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	country	user.attribute.country
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	postal_code	user.attribute.postal_code
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	true	userinfo.token.claim
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	street	user.attribute.street
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	true	id.token.claim
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	region	user.attribute.region
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	true	access.token.claim
d434ebd2-f0d9-477e-b4c3-0da4ad3214a8	locality	user.attribute.locality
4927f0a6-341f-47ff-9a74-32506c99388a	true	userinfo.token.claim
4927f0a6-341f-47ff-9a74-32506c99388a	phoneNumberVerified	user.attribute
4927f0a6-341f-47ff-9a74-32506c99388a	true	id.token.claim
4927f0a6-341f-47ff-9a74-32506c99388a	true	access.token.claim
4927f0a6-341f-47ff-9a74-32506c99388a	phone_number_verified	claim.name
4927f0a6-341f-47ff-9a74-32506c99388a	boolean	jsonType.label
68ecbefb-96fb-4d10-827e-853591f097c7	true	userinfo.token.claim
68ecbefb-96fb-4d10-827e-853591f097c7	phoneNumber	user.attribute
68ecbefb-96fb-4d10-827e-853591f097c7	true	id.token.claim
68ecbefb-96fb-4d10-827e-853591f097c7	true	access.token.claim
68ecbefb-96fb-4d10-827e-853591f097c7	phone_number	claim.name
68ecbefb-96fb-4d10-827e-853591f097c7	String	jsonType.label
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	true	multivalued
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	foo	user.attribute
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	true	access.token.claim
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	realm_access.roles	claim.name
76fbf569-4bf3-4d0b-9ec8-c2db277059f7	String	jsonType.label
a227b4d3-dce4-4299-a89b-997f89e977e6	true	multivalued
a227b4d3-dce4-4299-a89b-997f89e977e6	foo	user.attribute
a227b4d3-dce4-4299-a89b-997f89e977e6	true	access.token.claim
a227b4d3-dce4-4299-a89b-997f89e977e6	resource_access.${client_id}.roles	claim.name
a227b4d3-dce4-4299-a89b-997f89e977e6	String	jsonType.label
358643ae-5ff4-45fb-9eac-712898172b30	true	userinfo.token.claim
358643ae-5ff4-45fb-9eac-712898172b30	username	user.attribute
358643ae-5ff4-45fb-9eac-712898172b30	true	id.token.claim
358643ae-5ff4-45fb-9eac-712898172b30	true	access.token.claim
358643ae-5ff4-45fb-9eac-712898172b30	upn	claim.name
358643ae-5ff4-45fb-9eac-712898172b30	String	jsonType.label
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	true	multivalued
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	foo	user.attribute
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	true	id.token.claim
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	true	access.token.claim
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	groups	claim.name
8d9b06ee-99b0-4f52-9e05-78c8de6a30cb	String	jsonType.label
1ada89d1-fb02-4004-b55a-f68bb8c770a4	true	id.token.claim
1ada89d1-fb02-4004-b55a-f68bb8c770a4	true	access.token.claim
7a38be99-1857-49ff-a261-9118194086c3	false	single
7a38be99-1857-49ff-a261-9118194086c3	Basic	attribute.nameformat
7a38be99-1857-49ff-a261-9118194086c3	Role	attribute.name
16a0e246-c6c1-4f33-abd6-f77ddaee437e	true	userinfo.token.claim
16a0e246-c6c1-4f33-abd6-f77ddaee437e	gender	user.attribute
16a0e246-c6c1-4f33-abd6-f77ddaee437e	true	id.token.claim
16a0e246-c6c1-4f33-abd6-f77ddaee437e	true	access.token.claim
16a0e246-c6c1-4f33-abd6-f77ddaee437e	gender	claim.name
16a0e246-c6c1-4f33-abd6-f77ddaee437e	String	jsonType.label
376ec5c1-b127-4279-a328-dd542b7c96d7	true	userinfo.token.claim
376ec5c1-b127-4279-a328-dd542b7c96d7	true	id.token.claim
376ec5c1-b127-4279-a328-dd542b7c96d7	true	access.token.claim
3c77dbf1-7f28-4fea-b994-65521b845098	true	userinfo.token.claim
3c77dbf1-7f28-4fea-b994-65521b845098	birthdate	user.attribute
3c77dbf1-7f28-4fea-b994-65521b845098	true	id.token.claim
3c77dbf1-7f28-4fea-b994-65521b845098	true	access.token.claim
3c77dbf1-7f28-4fea-b994-65521b845098	birthdate	claim.name
3c77dbf1-7f28-4fea-b994-65521b845098	String	jsonType.label
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	true	userinfo.token.claim
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	username	user.attribute
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	true	id.token.claim
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	true	access.token.claim
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	preferred_username	claim.name
47cab0aa-8ad7-43fd-b6ce-3e5aa2d2e8f0	String	jsonType.label
4bc22974-6d07-4356-ada2-a23cdc90f634	true	userinfo.token.claim
4bc22974-6d07-4356-ada2-a23cdc90f634	zoneinfo	user.attribute
4bc22974-6d07-4356-ada2-a23cdc90f634	true	id.token.claim
4bc22974-6d07-4356-ada2-a23cdc90f634	true	access.token.claim
4bc22974-6d07-4356-ada2-a23cdc90f634	zoneinfo	claim.name
4bc22974-6d07-4356-ada2-a23cdc90f634	String	jsonType.label
635d7eba-4591-4b4c-933a-869ad3cbbad2	true	userinfo.token.claim
635d7eba-4591-4b4c-933a-869ad3cbbad2	middleName	user.attribute
635d7eba-4591-4b4c-933a-869ad3cbbad2	true	id.token.claim
635d7eba-4591-4b4c-933a-869ad3cbbad2	true	access.token.claim
635d7eba-4591-4b4c-933a-869ad3cbbad2	middle_name	claim.name
635d7eba-4591-4b4c-933a-869ad3cbbad2	String	jsonType.label
734bab82-54b5-4528-9f35-1bb8ee5c67c3	true	userinfo.token.claim
734bab82-54b5-4528-9f35-1bb8ee5c67c3	firstName	user.attribute
734bab82-54b5-4528-9f35-1bb8ee5c67c3	true	id.token.claim
734bab82-54b5-4528-9f35-1bb8ee5c67c3	true	access.token.claim
734bab82-54b5-4528-9f35-1bb8ee5c67c3	given_name	claim.name
734bab82-54b5-4528-9f35-1bb8ee5c67c3	String	jsonType.label
7ce931e3-2711-4615-8333-b014d6ef8890	true	userinfo.token.claim
7ce931e3-2711-4615-8333-b014d6ef8890	updatedAt	user.attribute
7ce931e3-2711-4615-8333-b014d6ef8890	true	id.token.claim
7ce931e3-2711-4615-8333-b014d6ef8890	true	access.token.claim
7ce931e3-2711-4615-8333-b014d6ef8890	updated_at	claim.name
7ce931e3-2711-4615-8333-b014d6ef8890	long	jsonType.label
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	true	userinfo.token.claim
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	lastName	user.attribute
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	true	id.token.claim
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	true	access.token.claim
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	family_name	claim.name
8ca02885-595c-4405-b3ca-2cfcd51b2dcc	String	jsonType.label
aa2d4125-8e05-4647-ba0b-998a0ce58f61	true	userinfo.token.claim
aa2d4125-8e05-4647-ba0b-998a0ce58f61	nickname	user.attribute
aa2d4125-8e05-4647-ba0b-998a0ce58f61	true	id.token.claim
aa2d4125-8e05-4647-ba0b-998a0ce58f61	true	access.token.claim
aa2d4125-8e05-4647-ba0b-998a0ce58f61	nickname	claim.name
aa2d4125-8e05-4647-ba0b-998a0ce58f61	String	jsonType.label
d26d96ba-e779-465d-abf9-9b4fd9f8799e	true	userinfo.token.claim
d26d96ba-e779-465d-abf9-9b4fd9f8799e	website	user.attribute
d26d96ba-e779-465d-abf9-9b4fd9f8799e	true	id.token.claim
d26d96ba-e779-465d-abf9-9b4fd9f8799e	true	access.token.claim
d26d96ba-e779-465d-abf9-9b4fd9f8799e	website	claim.name
d26d96ba-e779-465d-abf9-9b4fd9f8799e	String	jsonType.label
d93065a5-2502-4c00-acbe-f12472cfd95c	true	userinfo.token.claim
d93065a5-2502-4c00-acbe-f12472cfd95c	picture	user.attribute
d93065a5-2502-4c00-acbe-f12472cfd95c	true	id.token.claim
d93065a5-2502-4c00-acbe-f12472cfd95c	true	access.token.claim
d93065a5-2502-4c00-acbe-f12472cfd95c	picture	claim.name
d93065a5-2502-4c00-acbe-f12472cfd95c	String	jsonType.label
dcdd9359-8f8d-4564-a3d0-74042894b0c6	true	userinfo.token.claim
dcdd9359-8f8d-4564-a3d0-74042894b0c6	profile	user.attribute
dcdd9359-8f8d-4564-a3d0-74042894b0c6	true	id.token.claim
dcdd9359-8f8d-4564-a3d0-74042894b0c6	true	access.token.claim
dcdd9359-8f8d-4564-a3d0-74042894b0c6	profile	claim.name
dcdd9359-8f8d-4564-a3d0-74042894b0c6	String	jsonType.label
f2e9cfac-e498-4482-a8a5-f120c5900f3e	true	userinfo.token.claim
f2e9cfac-e498-4482-a8a5-f120c5900f3e	locale	user.attribute
f2e9cfac-e498-4482-a8a5-f120c5900f3e	true	id.token.claim
f2e9cfac-e498-4482-a8a5-f120c5900f3e	true	access.token.claim
f2e9cfac-e498-4482-a8a5-f120c5900f3e	locale	claim.name
f2e9cfac-e498-4482-a8a5-f120c5900f3e	String	jsonType.label
d61a228d-01a8-4b24-a81d-a65f6d91b082	true	userinfo.token.claim
d61a228d-01a8-4b24-a81d-a65f6d91b082	emailVerified	user.attribute
d61a228d-01a8-4b24-a81d-a65f6d91b082	true	id.token.claim
d61a228d-01a8-4b24-a81d-a65f6d91b082	true	access.token.claim
d61a228d-01a8-4b24-a81d-a65f6d91b082	email_verified	claim.name
d61a228d-01a8-4b24-a81d-a65f6d91b082	boolean	jsonType.label
fed73f89-6dab-4f67-83c3-81b54c8d4885	true	userinfo.token.claim
fed73f89-6dab-4f67-83c3-81b54c8d4885	email	user.attribute
fed73f89-6dab-4f67-83c3-81b54c8d4885	true	id.token.claim
fed73f89-6dab-4f67-83c3-81b54c8d4885	true	access.token.claim
fed73f89-6dab-4f67-83c3-81b54c8d4885	email	claim.name
fed73f89-6dab-4f67-83c3-81b54c8d4885	String	jsonType.label
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	formatted	user.attribute.formatted
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	country	user.attribute.country
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	postal_code	user.attribute.postal_code
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	true	userinfo.token.claim
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	street	user.attribute.street
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	true	id.token.claim
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	region	user.attribute.region
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	true	access.token.claim
4ffd0f91-6e58-4d1a-a04a-41b8f1d4c82c	locality	user.attribute.locality
42c1cec7-f498-4dae-808f-4981c54966fd	true	userinfo.token.claim
42c1cec7-f498-4dae-808f-4981c54966fd	phoneNumber	user.attribute
42c1cec7-f498-4dae-808f-4981c54966fd	true	id.token.claim
42c1cec7-f498-4dae-808f-4981c54966fd	true	access.token.claim
42c1cec7-f498-4dae-808f-4981c54966fd	phone_number	claim.name
42c1cec7-f498-4dae-808f-4981c54966fd	String	jsonType.label
a01ebe9c-f793-4d09-aa46-7ab494e55b67	true	userinfo.token.claim
a01ebe9c-f793-4d09-aa46-7ab494e55b67	phoneNumberVerified	user.attribute
a01ebe9c-f793-4d09-aa46-7ab494e55b67	true	id.token.claim
a01ebe9c-f793-4d09-aa46-7ab494e55b67	true	access.token.claim
a01ebe9c-f793-4d09-aa46-7ab494e55b67	phone_number_verified	claim.name
a01ebe9c-f793-4d09-aa46-7ab494e55b67	boolean	jsonType.label
39727760-c1a2-4500-9954-3d858e7fad78	true	multivalued
39727760-c1a2-4500-9954-3d858e7fad78	foo	user.attribute
39727760-c1a2-4500-9954-3d858e7fad78	true	access.token.claim
39727760-c1a2-4500-9954-3d858e7fad78	resource_access.${client_id}.roles	claim.name
39727760-c1a2-4500-9954-3d858e7fad78	String	jsonType.label
f864d4c4-93af-4893-92b9-cd0ad043ea72	true	multivalued
f864d4c4-93af-4893-92b9-cd0ad043ea72	foo	user.attribute
f864d4c4-93af-4893-92b9-cd0ad043ea72	true	access.token.claim
f864d4c4-93af-4893-92b9-cd0ad043ea72	realm_access.roles	claim.name
f864d4c4-93af-4893-92b9-cd0ad043ea72	String	jsonType.label
86028238-bab5-4bb3-b054-f09a5fb82305	true	multivalued
86028238-bab5-4bb3-b054-f09a5fb82305	foo	user.attribute
86028238-bab5-4bb3-b054-f09a5fb82305	true	id.token.claim
86028238-bab5-4bb3-b054-f09a5fb82305	true	access.token.claim
86028238-bab5-4bb3-b054-f09a5fb82305	groups	claim.name
86028238-bab5-4bb3-b054-f09a5fb82305	String	jsonType.label
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	true	userinfo.token.claim
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	username	user.attribute
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	true	id.token.claim
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	true	access.token.claim
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	upn	claim.name
e4c56bb3-5d08-4f85-840f-5b102b70ecbc	String	jsonType.label
8063197d-3777-420e-99a3-f3ed089ce541	true	id.token.claim
8063197d-3777-420e-99a3-f3ed089ce541	true	access.token.claim
754a9961-cd60-4582-a7c2-151d807b5531	true	userinfo.token.claim
754a9961-cd60-4582-a7c2-151d807b5531	locale	user.attribute
754a9961-cd60-4582-a7c2-151d807b5531	true	id.token.claim
754a9961-cd60-4582-a7c2-151d807b5531	true	access.token.claim
754a9961-cd60-4582-a7c2-151d807b5531	locale	claim.name
754a9961-cd60-4582-a7c2-151d807b5531	String	jsonType.label
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
6abe3626-afce-40f0-b6c4-b9d31c2c882c	60	300	300	\N	\N	\N	t	f	0	\N	agregator	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	297c604f-acff-4281-9db3-920bc322ebf7	1800	t	en	f	f	f	f	0	1	30	6	HmacSHA1	totp	ebf17fbb-e3b7-4df1-b3a3-2a77314abbb1	8a24c36e-d3f0-428a-ba16-aa24622bd1d5	583c0aeb-0f26-49a9-a08f-9221a6c67d49	57c92d40-d4b9-4c2a-a962-6c11f26d6e3e	f69f5490-4cbb-44ff-9844-1fb015dc01fd	2592000	f	900	t	f	9cbd5892-7ae0-4d66-8846-229ad0487f17	0	f	0	0	a7cf41ae-8abb-4433-a029-7d452dd5ffa2
7279654e-2ddf-47fc-8f7d-a9c014f639c6	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	dfae48ef-2265-4f99-a1d9-696f59c76972	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	e6448a96-84cc-4575-a1b8-a15f88eee88c	e5ae1571-1967-4c75-bda6-3919ed9b43b2	bac6b9b2-cbe9-451f-ba0e-621a73cb4646	7a9b6964-a645-4ffd-ae49-f27b7869aff3	7890f910-0130-42cd-89e7-e1ba3c453f34	2592000	f	900	t	f	255366bb-7749-4fe3-a6cb-ab3b585163e0	0	f	0	0	f24f0717-23d9-4364-b3cf-7927c16a2223
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	7279654e-2ddf-47fc-8f7d-a9c014f639c6
_browser_header.xContentTypeOptions	7279654e-2ddf-47fc-8f7d-a9c014f639c6	nosniff
_browser_header.xRobotsTag	7279654e-2ddf-47fc-8f7d-a9c014f639c6	none
_browser_header.xFrameOptions	7279654e-2ddf-47fc-8f7d-a9c014f639c6	SAMEORIGIN
_browser_header.contentSecurityPolicy	7279654e-2ddf-47fc-8f7d-a9c014f639c6	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1; mode=block
_browser_header.strictTransportSecurity	7279654e-2ddf-47fc-8f7d-a9c014f639c6	max-age=31536000; includeSubDomains
bruteForceProtected	7279654e-2ddf-47fc-8f7d-a9c014f639c6	false
permanentLockout	7279654e-2ddf-47fc-8f7d-a9c014f639c6	false
maxFailureWaitSeconds	7279654e-2ddf-47fc-8f7d-a9c014f639c6	900
minimumQuickLoginWaitSeconds	7279654e-2ddf-47fc-8f7d-a9c014f639c6	60
waitIncrementSeconds	7279654e-2ddf-47fc-8f7d-a9c014f639c6	60
quickLoginCheckMilliSeconds	7279654e-2ddf-47fc-8f7d-a9c014f639c6	1000
maxDeltaTimeSeconds	7279654e-2ddf-47fc-8f7d-a9c014f639c6	43200
failureFactor	7279654e-2ddf-47fc-8f7d-a9c014f639c6	30
realmReusableOtpCode	7279654e-2ddf-47fc-8f7d-a9c014f639c6	false
displayName	7279654e-2ddf-47fc-8f7d-a9c014f639c6	Keycloak
displayNameHtml	7279654e-2ddf-47fc-8f7d-a9c014f639c6	<div class="kc-logo-text"><span>Keycloak</span></div>
defaultSignatureAlgorithm	7279654e-2ddf-47fc-8f7d-a9c014f639c6	RS256
offlineSessionMaxLifespanEnabled	7279654e-2ddf-47fc-8f7d-a9c014f639c6	false
offlineSessionMaxLifespan	7279654e-2ddf-47fc-8f7d-a9c014f639c6	5184000
realmReusableOtpCode	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
oauth2DeviceCodeLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	600
oauth2DevicePollingInterval	6abe3626-afce-40f0-b6c4-b9d31c2c882c	5
cibaBackchannelTokenDeliveryMode	6abe3626-afce-40f0-b6c4-b9d31c2c882c	poll
cibaExpiresIn	6abe3626-afce-40f0-b6c4-b9d31c2c882c	120
cibaInterval	6abe3626-afce-40f0-b6c4-b9d31c2c882c	5
cibaAuthRequestedUserHint	6abe3626-afce-40f0-b6c4-b9d31c2c882c	login_hint
parRequestUriLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	60
bruteForceProtected	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
permanentLockout	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
maxFailureWaitSeconds	6abe3626-afce-40f0-b6c4-b9d31c2c882c	900
minimumQuickLoginWaitSeconds	6abe3626-afce-40f0-b6c4-b9d31c2c882c	60
waitIncrementSeconds	6abe3626-afce-40f0-b6c4-b9d31c2c882c	60
quickLoginCheckMilliSeconds	6abe3626-afce-40f0-b6c4-b9d31c2c882c	1000
maxDeltaTimeSeconds	6abe3626-afce-40f0-b6c4-b9d31c2c882c	43200
failureFactor	6abe3626-afce-40f0-b6c4-b9d31c2c882c	30
actionTokenGeneratedByAdminLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	43200
actionTokenGeneratedByUserLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	300
defaultSignatureAlgorithm	6abe3626-afce-40f0-b6c4-b9d31c2c882c	RS256
offlineSessionMaxLifespanEnabled	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
offlineSessionMaxLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	5184000
clientSessionIdleTimeout	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
clientSessionMaxLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
clientOfflineSessionIdleTimeout	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
clientOfflineSessionMaxLifespan	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
webAuthnPolicyRpEntityName	6abe3626-afce-40f0-b6c4-b9d31c2c882c	keycloak
webAuthnPolicySignatureAlgorithms	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ES256
webAuthnPolicyRpId	6abe3626-afce-40f0-b6c4-b9d31c2c882c
webAuthnPolicyAttestationConveyancePreference	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyAuthenticatorAttachment	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyRequireResidentKey	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyUserVerificationRequirement	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyCreateTimeout	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
webAuthnPolicyAvoidSameAuthenticatorRegister	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
webAuthnPolicyRpEntityNamePasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	ES256
webAuthnPolicyRpIdPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c
webAuthnPolicyAttestationConveyancePreferencePasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyRequireResidentKeyPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyUserVerificationRequirementPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	not specified
webAuthnPolicyCreateTimeoutPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	false
client-policies.profiles	6abe3626-afce-40f0-b6c4-b9d31c2c882c	{"profiles":[]}
client-policies.policies	6abe3626-afce-40f0-b6c4-b9d31c2c882c	{"policies":[]}
_browser_header.contentSecurityPolicyReportOnly	6abe3626-afce-40f0-b6c4-b9d31c2c882c
_browser_header.xContentTypeOptions	6abe3626-afce-40f0-b6c4-b9d31c2c882c	nosniff
_browser_header.xRobotsTag	6abe3626-afce-40f0-b6c4-b9d31c2c882c	none
_browser_header.xFrameOptions	6abe3626-afce-40f0-b6c4-b9d31c2c882c	SAMEORIGIN
_browser_header.contentSecurityPolicy	6abe3626-afce-40f0-b6c4-b9d31c2c882c	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	6abe3626-afce-40f0-b6c4-b9d31c2c882c	1; mode=block
_browser_header.strictTransportSecurity	6abe3626-afce-40f0-b6c4-b9d31c2c882c	max-age=31536000; includeSubDomains
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
7279654e-2ddf-47fc-8f7d-a9c014f639c6	jboss-logging
6abe3626-afce-40f0-b6c4-b9d31c2c882c	jboss-logging
\.


--
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	7279654e-2ddf-47fc-8f7d-a9c014f639c6
password	password	t	t	6abe3626-afce-40f0-b6c4-b9d31c2c882c
\.


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
6abe3626-afce-40f0-b6c4-b9d31c2c882c	ru
6abe3626-afce-40f0-b6c4-b9d31c2c882c	en
\.


--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.redirect_uris (client_id, value) FROM stdin;
3ea5ab99-78a8-4556-9af0-768f51a2a8ce	/realms/master/account/*
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	/realms/master/account/*
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	/admin/master/console/*
480c6fbf-9e2c-4582-8da2-947d40fad2e5	/realms/agregator/account/*
69131221-02a3-46b7-980b-e32f42b06fe1	/realms/agregator/account/*
015e83ff-f7b2-4219-b029-5ffd2f507798	/admin/agregator/console/*
be0d5e62-c478-486d-b7f4-672ed3a22bc8	http://localhost:5173/*
be0d5e62-c478-486d-b7f4-672ed3a22bc8	http://localhost:8123/*
\.


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
5b95b958-0cf4-4222-ad66-28c7cc4bd894	VERIFY_EMAIL	Verify Email	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	VERIFY_EMAIL	50
943bc931-6593-4001-9712-1a3d03e17d30	UPDATE_PROFILE	Update Profile	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	UPDATE_PROFILE	40
fa359177-0e1a-469e-bfbb-fbb66bd1c116	CONFIGURE_TOTP	Configure OTP	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	CONFIGURE_TOTP	10
39dd6faa-4e26-4462-a65a-621a87f7b06c	UPDATE_PASSWORD	Update Password	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	UPDATE_PASSWORD	30
a5812ec8-2129-46de-a527-01ba55ea6d7a	terms_and_conditions	Terms and Conditions	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	f	terms_and_conditions	20
824c783e-c7d1-452c-83e3-12c75d80cb15	delete_account	Delete Account	7279654e-2ddf-47fc-8f7d-a9c014f639c6	f	f	delete_account	60
c3c3aebf-027d-4e8c-89fd-d86b1ac59cc3	update_user_locale	Update User Locale	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	update_user_locale	1000
81f94eee-aadc-488d-8df3-b50bb78d0a45	webauthn-register	Webauthn Register	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	webauthn-register	70
dc3281d5-a803-4f7c-ad3c-4ee4bf95ed5e	webauthn-register-passwordless	Webauthn Register Passwordless	7279654e-2ddf-47fc-8f7d-a9c014f639c6	t	f	webauthn-register-passwordless	80
26f23e94-29b6-454f-96a5-4813f560ffb3	VERIFY_EMAIL	Verify Email	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	VERIFY_EMAIL	50
9da20e1e-7487-4c89-aff4-e6635d0644ee	UPDATE_PROFILE	Update Profile	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	UPDATE_PROFILE	40
ea0a36f4-04fe-40fa-8ef9-a4371d37cbc4	UPDATE_PASSWORD	Update Password	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	UPDATE_PASSWORD	30
e5efd9c5-21ff-4afb-9d6c-b448f8b51404	terms_and_conditions	Terms and Conditions	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	f	terms_and_conditions	20
d685a4f7-ee78-4384-84c5-59ae2cd302a8	delete_account	Delete Account	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	f	delete_account	60
0ead0ec1-08a8-4f19-8093-c6290e28d190	update_user_locale	Update User Locale	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	update_user_locale	1000
bb91b737-f218-4fe6-9055-353632c4e8cb	webauthn-register	Webauthn Register	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	webauthn-register	70
39b24912-3b59-4ff7-9cd4-e3baaefd7f1a	webauthn-register-passwordless	Webauthn Register Passwordless	6abe3626-afce-40f0-b6c4-b9d31c2c882c	t	f	webauthn-register-passwordless	80
77f3f2fe-2c9c-402f-8c5e-86a692958cbc	CONFIGURE_TOTP	Configure OTP	6abe3626-afce-40f0-b6c4-b9d31c2c882c	f	f	CONFIGURE_TOTP	10
\.


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
\.


--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
\.


--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
\.


--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.resource_uris (resource_id, value) FROM stdin;
\.


--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	6a47325a-009d-4433-a1d1-b38f976607aa
c082aa51-c380-4a40-aa4e-35e70a4c8ea5	2906a673-ba0d-45b9-8969-478fd8b9fdc1
69131221-02a3-46b7-980b-e32f42b06fe1	0b1819fc-c4a0-4515-b527-cf4f8028d8ab
69131221-02a3-46b7-980b-e32f42b06fe1	9cac36f5-4768-4d84-9fb2-bc4174b9d7ed
\.


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_attribute (name, value, user_id, id) FROM stdin;
\.


--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before) FROM stdin;
717d501c-c8cf-412a-aef4-798c571b5bbd	\N	52ec3688-583a-4186-aa0c-cf88cb1b3cd9	f	t	\N	\N	\N	7279654e-2ddf-47fc-8f7d-a9c014f639c6	agregator	1730140858991	\N	0
dc955097-850c-44c7-9105-21a11d201858	\N	73dda211-f6eb-42f0-8606-07e55a2a8a50	t	t	\N			6abe3626-afce-40f0-b6c4-b9d31c2c882c	test_admin	1730141398591	\N	0
bfa5c9a5-c9c9-46b6-a325-0a7c179c997c	\N	c22df515-9d09-47c3-95ce-613cd15216b4	t	t	\N			6abe3626-afce-40f0-b6c4-b9d31c2c882c	test_user	1730141358002	\N	0
\.


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_group_membership (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
f24f0717-23d9-4364-b3cf-7927c16a2223	717d501c-c8cf-412a-aef4-798c571b5bbd
c983b233-1311-4b14-977d-ff4edf4ae22e	717d501c-c8cf-412a-aef4-798c571b5bbd
92830c15-1035-408a-a95e-c629de26bd84	717d501c-c8cf-412a-aef4-798c571b5bbd
dbde5a06-5511-47ab-acb8-9833745e2f02	717d501c-c8cf-412a-aef4-798c571b5bbd
0b2a847b-821a-46cb-8c95-f4651078f18c	717d501c-c8cf-412a-aef4-798c571b5bbd
bc1e1995-edb4-43ed-9396-fc0c70b51c3b	717d501c-c8cf-412a-aef4-798c571b5bbd
7ab2f881-556e-488b-a939-db830d0d87cc	717d501c-c8cf-412a-aef4-798c571b5bbd
35e53077-cee7-4b6c-a100-e40111dabfd3	717d501c-c8cf-412a-aef4-798c571b5bbd
0fe94a80-a707-49c6-aacd-0cf3f63a4d30	717d501c-c8cf-412a-aef4-798c571b5bbd
14c53f04-6895-496f-bb68-696ab16f7a5d	717d501c-c8cf-412a-aef4-798c571b5bbd
af2b12f2-9322-427d-a1f7-5070a38c5fa0	717d501c-c8cf-412a-aef4-798c571b5bbd
9f85eb5d-d409-4f16-b9cd-1096496e15ab	717d501c-c8cf-412a-aef4-798c571b5bbd
4b4d57a0-1b44-4718-a1fb-52f1498d39ad	717d501c-c8cf-412a-aef4-798c571b5bbd
c3a5bc8e-8084-4d3f-95bb-92a1fc3615a2	717d501c-c8cf-412a-aef4-798c571b5bbd
9c94ef85-9148-4588-8c6c-730617147c2a	717d501c-c8cf-412a-aef4-798c571b5bbd
b8ffe434-7c2c-4fc2-af2a-f5f0e3029d66	717d501c-c8cf-412a-aef4-798c571b5bbd
a9c811b2-0c90-458a-9003-a4a7c1efab36	717d501c-c8cf-412a-aef4-798c571b5bbd
a5f8d190-822e-43de-93d9-d2b79a871a77	717d501c-c8cf-412a-aef4-798c571b5bbd
8a7399b2-916b-48da-bbf6-49ca4f1affcc	717d501c-c8cf-412a-aef4-798c571b5bbd
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	bfa5c9a5-c9c9-46b6-a325-0a7c179c997c
a7cf41ae-8abb-4433-a029-7d452dd5ffa2	dc955097-850c-44c7-9105-21a11d201858
f46a535f-97a7-4be3-be01-24229899d5d7	dc955097-850c-44c7-9105-21a11d201858
\.


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_session (id, auth_method, ip_address, last_session_refresh, login_username, realm_id, remember_me, started, user_id, user_session_state, broker_session_id, broker_user_id) FROM stdin;
\.


--
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.user_session_note (user_session, name, value) FROM stdin;
\.


--
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.username_login_failure (realm_id, username, failed_login_not_before, last_failure, last_ip_failure, num_failures) FROM stdin;
\.


--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: agregator
--

COPY public.web_origins (client_id, value) FROM stdin;
df5f48d6-f0b2-46b5-afbe-4b6bf8e0be66	+
015e83ff-f7b2-4219-b029-5ffd2f507798	+
be0d5e62-c478-486d-b7f4-672ed3a22bc8	+
\.


--
-- Name: username_login_failure CONSTRAINT_17-2; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.username_login_failure
    ADD CONSTRAINT "CONSTRAINT_17-2" PRIMARY KEY (realm_id, username);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: client_user_session_note constr_cl_usr_ses_note; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT constr_cl_usr_ses_note PRIMARY KEY (client_session, name);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: client_session_role constraint_5; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT constraint_5 PRIMARY KEY (client_session, role_id);


--
-- Name: user_session constraint_57; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT constraint_57 PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client_session_note constraint_5e; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT constraint_5e PRIMARY KEY (client_session, name);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: client_session constraint_8; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT constraint_8 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: client_session_auth_status constraint_auth_status_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT constraint_auth_status_pk PRIMARY KEY (client_session, authenticator);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: client_session_prot_mapper constraint_cs_pmp_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT constraint_cs_pmp_pk PRIMARY KEY (client_session, protocol_mapper_id);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: user_session_note constraint_usn_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT constraint_usn_pk PRIMARY KEY (user_session, name);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: realm_localizations realm_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: user_consent uk_jkuwuvd56ontgsuhogm8uewrt; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_jkuwuvd56ontgsuhogm8uewrt UNIQUE (client_id, client_storage_provider, external_client_id, user_id);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: idx_admin_event_time; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_client_session_session; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_client_session_session ON public.client_session USING btree (session_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_att_by_name_value; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_group_att_by_name_value ON public.group_attribute USING btree (name, ((value)::character varying(250)));


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_offline_css_preload; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_offline_css_preload ON public.offline_client_session USING btree (client_id, offline_flag);


--
-- Name: idx_offline_uss_by_user; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);


--
-- Name: idx_offline_uss_by_usersess; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_offline_uss_by_usersess ON public.offline_user_session USING btree (realm_id, offline_flag, user_session_id);


--
-- Name: idx_offline_uss_createdon; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_offline_uss_createdon ON public.offline_user_session USING btree (created_on);


--
-- Name: idx_offline_uss_preload; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_offline_uss_preload ON public.offline_user_session USING btree (offline_flag, created_on, user_session_id);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_us_sess_id_on_cl_sess; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_us_sess_id_on_cl_sess ON public.offline_client_session USING btree (user_session_id);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_attribute_name; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_user_service_account; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: agregator
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: client_session_auth_status auth_status_constraint; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT auth_status_constraint FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_session_note fk5edfb00ff51c2736; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT fk5edfb00ff51c2736 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: user_session_note fk5edfb00ff51d3472; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT fk5edfb00ff51d3472 FOREIGN KEY (user_session) REFERENCES public.user_session(id);


--
-- Name: client_session_role fk_11b7sgqw18i532811v7o2dv76; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT fk_11b7sgqw18i532811v7o2dv76 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session_prot_mapper fk_33a8sgqw18i532811v7o2dk89; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT fk_33a8sgqw18i532811v7o2dk89 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session fk_b4ao2vcvat6ukau74wbwtfqo1; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT fk_b4ao2vcvat6ukau74wbwtfqo1 FOREIGN KEY (session_id) REFERENCES public.user_session(id);


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_user_session_note fk_cl_usr_ses_note; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT fk_cl_usr_ses_note FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: agregator
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);


--
-- PostgreSQL database dump complete
--

