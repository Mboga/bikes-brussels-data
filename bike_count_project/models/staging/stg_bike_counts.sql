SELECT
    device_name,
    date,
    time_gap,
    count,
    CAST(date AS timestamp) + INTERVAL '15 minutes' *(time_gap -1) AS observation_timestamp,
    average_speed,
    road_en as road_name,
    description_en as road_description,
    basic_schema
FROM
    {{source('bike_counts_raw', 'bike_counts')}}