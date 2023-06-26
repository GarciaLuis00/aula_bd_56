#criando tabela departamentos
create table departamentos (
id int auto_increment,
nome varchar(60),
primary key (id)
);

#inserindo valores na tabela departamentos 
insert into departamentos
values 
(null, 'Financeiro'),
(null, 'Vendas'),
(null, 'Desenvolvimento de produtos'),
(null, 'TI'),
(null,'Juridíco'),
(null,'Qualidade'),
(null,'Administração'),
(null,'Atendimento ao Cliente'),
(null,'Recursos Humanos'),
(null,'Marketing'),
(null,'Produção'),
(null,'Executivo'),
(null,'Gerente Financeiro'),
(null,'Gerente de Marketing'),
(null,'Gerente de Produção');

#adicionando a coluna id_departamentos como chave estrangeira fazendo referencia a tabela departamentos (alteração da tabela)
alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamentos
#id do departamento que faz referencia ao departamento id
foreign key(id_departamento) references departamentos(id);

#conferindo se o comando foi executado corretamente
select * from funcionarios;
select * from departamentos;
select * from funcionarios where id = 1;

#atualizando na tabela funcionarios onde o id do departamento é 1 e o id do funcionário é id 1
update funcionarios set id_departamento = 1 where id = 1;

#atualiza os funcionarios com id 2,3,4 ou 5 para departamento de vendas
update funcionarios set id_departamento = 2 where id = 2 or id = 3 or id = 4 or id = 5;
#atualiza os funcionarios com id 6,7,8 ou 9 para departamento de TI
update funcionarios set id_departamento = 4 where id = 6 or id = 7 or id = 8 or id = 9;
#atualiza os funcionários com id 10,11,12,12 para o departamento de juridico
update funcionarios set id_departamento = 5 where id = 10 or id = 11 or id = 12 or id = 13;
#atualiza os funcionarios para o departamento de recursos humanos
update funcionarios set id_departamento = 9 where id = 14 or id = 15 or id = 16 or id = 17;

#selecionando o maior salario da tabela funcionários 
select max(salario) as maior_salario from funcionarios;


#selecionando da tabela funcionário onde o salário seja ordenado do maior pro menor
select * from funcionarios where salario order by salario desc;


#atualizando a tabela funcionários onde departamento é igual a 12 e o id do funcionário igual a 44 (executivo) 
update funcionarios set id_departamento = 12 where id = 44;
#atualizando a tabela funcionários onde departamento é igual a 13 e o id do funcionário igual a 413 (gerente financeiro)
update funcionarios set id_departamento = 13 where id = 413;
#atualizando a tabela funcionários onde departamento é igual a 15 e o id do funcionário igual a 642 (
update funcionarios set id_departamento = 15 where id = 642;
#atualizando a tabela funcionários onde departamento é igual a 14 e o id do funcionário igual a 462
update funcionarios set id_departamento = 14 where id = 462;





















