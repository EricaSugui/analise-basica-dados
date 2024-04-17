use empregados_db;
/** Extração de SubQuery */
select cod_depto from departamento where cod_depto % 2 = 0;
select * from empregado where cod_depto in(
	select cod_depto from departamento where cod_depto % 2 = 0
);

/** Cálculo com Datas */
select *, DATEDIFF(now(), dt_nascimento) as idade from dependente; 