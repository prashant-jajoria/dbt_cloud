{% macro GET_SEASON(x) %}
    CASE 
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12,1,2)  THEN 'SUMMER'
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3,4,5)   THEN 'AUTUMN'
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6,7,8)   THEN 'WINTER'
        WHEN MONTH(TO_TIMESTAMP({{x}})) IN (9,10,11) THEN 'SPRING'
    END
{% endmacro %}

{% macro DAY_TYPE(x) %}
CASE
        WHEN DAYNAME(TO_TIMESTAMP({{x}})) IN('Sat','Sun') THEN 'WEEKEND'
        ELSE 'BUSINESSDAY'
END
{% endmacro %}