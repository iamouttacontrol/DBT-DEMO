{% macro function1(x) %}

CASE WHEN TO_TIMESTAMP({{x}}) < CURRENT_DATE THEN 'PAST'
ELSE 'FUTURE' END


{%endmacro%}


{% macro get_season(x) %}
    CASE
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12, 1, 2)  THEN 'Winter'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3, 4, 5)   THEN 'Spring'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6, 7, 8)   THEN 'Summer'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (9, 10, 11) THEN 'Autumn'
    ELSE 'Unknown'
    End 

{%endmacro%}

{%macro day_type (x) %}
CASE
    WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
END

{%endmacro%}

