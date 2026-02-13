CREATE TABLE tb_cargo (
  cd_cargo INTEGER(30) UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_estadocivil_cd_est-civ INTEGER UNSIGNED NOT NULL,
  cargo: CHAR INTEGER UNSIGNED NULL,
  PRIMARY KEY(cd_cargo),
  INDEX tb_cargo_FKIndex1(tb_estadocivil_cd_est-civ)
);

CREATE TABLE tb_curso (
  cd_curso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  curso CHAR(30) NULL,
  PRIMARY KEY(cd_curso)
);

CREATE TABLE tb_curso_has_tb_funcionario (
  tb_curso_cd_curso INTEGER UNSIGNED NOT NULL,
  tb_funcionario_cpf CHAR(11) NOT NULL,
  PRIMARY KEY(tb_curso_cd_curso, tb_funcionario_cpf),
  INDEX tb_curso_has_tb_funcionario_FKIndex1(tb_curso_cd_curso),
  INDEX tb_curso_has_tb_funcionario_FKIndex2(tb_funcionario_cpf)
);

CREATE TABLE tb_estadocivil (
  cd_est-civ INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_funcionario_cpf CHAR(11) NOT NULL,
  est-civ CHAR NULL,
  PRIMARY KEY(cd_est-civ),
  INDEX tb_estadocivil_FKIndex1(tb_funcionario_cpf)
);

CREATE TABLE tb_funcionario (
  cpf CHAR(11) NOT NULL AUTO_INCREMENT,
  nome CHAR(256) NULL,
  dt DATE NULL,
  PRIMARY KEY(cpf)
);


