use empregados_db;

/** Encadeamento de chaves relacionais */
select 
	emp.nome as empregado, 
    depto.nome as departamento 
from 
	empregado emp, departamento depto 
where
	depto.cod_depto = emp.cod_depto; 
    
    /** Join Inner e left */
    select
		emp.nome as empregado,
        count(dep.cod_dep) as dependente
	from
		empregado emp
	inner join
        dependente dep
	where
		emp.cod_emp = dep.cod_emp
	Group by
		emp.nome;