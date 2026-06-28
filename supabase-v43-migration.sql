-- Run once in Supabase SQL Editor before using v43
alter table timer_state
add column if not exists active_device_id text,
add column if not exists base_elapsed_at_start double precision not null default 0;

alter table buckets
add column if not exists name_updated_at timestamptz;
