SELECT 
    CAST(observation_timestamp AS date) AS observation_date,
    road_name,
    SUM("count") AS total_daily_count,
    AVG(average_speed) AS average_daily_speed
FROM
    {{ref('stg_bike_counts')}}

GROUP BY
    1, 2
ORDER BY
    1,2