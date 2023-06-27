

delete from funcionarios;


set sql_safe_updates = 0;


select * from funcionarios;

#contagem da quantidade de funcionários agrupados por departamento
select id_departamento, count(*) as total_funcionarios
from funcionarios
group by id_departamento;

#contagem da quantidade de funcionários agrupados por departamento com o salário maior que 10000
select id_departamento, count(*) as total_funcionarios
from funcionarios
where salario > 10000 group by id_departamento;

#contagem da quantidade de funcionário agrupados por departamento que recebem entre 5000 e 10000.
select id_departamento, count(*) as total_funcionarios 
from funcionarios 
where salario between 5000 and 10000 group by id_departamento;

#soma dos salários agrupados por departamento.
select id_departamento, sum(salario) as total_funcionarios
from funcionarios
group by id_departamento;


#soma dos salários agrupados por departamento.
select id_departamento, avg(salario) as total_funcionarios
from funcionarios
group by id_departamento;

















