CREATE TABLE out_stock (
  id INT AUTO_INCREMENT PRIMARY KEY,
  rm VARCHAR(255),
  nome VARCHAR(255),
  data_solicitacao DATE
);

INSERT INTO out_stock (rm, nome, data_solicitacao) VALUES ("553315", "Murillo", "2024-10-19");
