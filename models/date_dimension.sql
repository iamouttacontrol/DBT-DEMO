WITH CTE AS (

select


TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
DAYNAME(TO_TIMESTAMP(STARTED_AT)) AS DAYNAME,




{{day_type('STARTED_AT')}} AS DAY_TYPE,
{{get_season('STARTED_AT')}} AS STATION_OF_YEAR,
{{function1('STARTED_AT')}} AS Past_or_Future

from
{{source('demo', 'bike')}}
where STARTED_AT != 'started_at'

)

select * from CTE
