{# with first_case as (
    select
        'John Reimos' as name,
        [
            struct(
                'Tunnel' as artist,
                'Polo & Pan' as song
            ),
            struct(
                'Blanco Palamera' as artist,
                'Verte Ganar' as song
            ),
            struct (
                'Omar Apollo' as artist,
                'Kamikaze' as song
            )
         ] as top_three_songs_ever,
        25 as age,
        cast(null as float64) as net_worth,
        current_timestamp() as last_time_they_napped
),

second_case as (
    select
        'Ana Sillón' as name,
        [
            struct(
                'Sen Senra' as artist,
                'De ti' as song
            ),
            struct(
                'DRAMA' as artist,
                'Billy' as song
            ),
            struct (
                'The Academic' as artist,
                'Not Your Summer' as song
            )
         ] as top_three_songs_ever,
        22 as age,
        666 as net_worth,
        current_timestamp() as last_time_they_napped
),

third_case as (
    select
        'Sigismund Dijkstra' as name,
        [
            struct(
                'Rusowsky' as artist,
                '+ suave' as song
            ),
            struct(
                'Remi Wolf' as artist,
                'Sexy Villain' as song
            ),
            struct (
                cast(null as string) as artist,
                cast(null as string) as song
            )
         ] as top_three_songs_ever,
        30 as age,
        -50000.33 as net_worth,
        current_timestamp() as last_time_they_napped
),

cases as (
    select * from first_case
        union all
    select * from second_case
        union all
    select * from third_case
)

select * from cases #}

select *, 'jajajaja' as my from {{ source('sales_ddbb', 'Employees') }}
