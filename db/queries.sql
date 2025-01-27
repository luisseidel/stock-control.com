create table cidades (
    id_cidade bigint primary key not null auto_increment,
    nm_cidade varchar(200),
    id_estado bigint not null foreign key  estados(id_estado);
);

create table unidades_federativas (
    id_uf bigint primary key not null auto_increment,
    nm_unidade_federativa varchar(200) not null,
    nm_sigla varchar(2) not null,
    id_pais bigint not null foreign key paises(id_pais);
);

create table paises (
    id_pais bigint primary key not null auto_increment,
    nm_pais varchar(200),
    nm_sigla varchar(3)
);

create table empresas (
    id_empresa bigint primary key not null AUTO_INCREMENT,
    nm_fantasia varchar(200) not null,
    nm_razao_social varchar(200) not null,
    tx_cnpj varchar(14) not null,
    id_cidade bigint not null foreign key cidades(id_cidade),
    tx_endereco text,
    tx_cep text,
    tx_telefone text,
    tx_email text,
);

CREATE TABLE `arquivos` ( 
    `id_arquivo` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    `tx_legenda` VARCHAR(100) , 
    `tx_arquivo` BLOB NOT NULL , 
);
