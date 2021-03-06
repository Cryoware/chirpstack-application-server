-- +migrate Up
alter table network_server
    add column gateway_discovery_enabled boolean not null default false,
    add column gateway_discovery_interval integer not null default 0,
    add column gateway_discovery_tx_frequency integer not null default 0,
    add column gateway_discovery_dr smallint not null default 0;

-- +migrate Down
alter table network_server
    drop column gateway_discovery_enabled,
    drop column gateway_discovery_interval,
    drop column gateway_discovery_tx_frequency,
    drop column gateway_discovery_dr;
