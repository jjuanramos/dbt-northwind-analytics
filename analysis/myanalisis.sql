select *, 'jajajaja' as my from {{ source('sales_ddbb', 'Employees') }}