select employee_id,
       case when bonus_ind = 'Y' then salary else 0 end bonus
from
(select 
    employee_id,
    salary,
    case when substr(name,1,1) = 'M' then 'N' 
         when mod(employee_id, 2) = 0 then 'N' else 'Y' end bonus_ind
from employees);