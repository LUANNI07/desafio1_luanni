USE desafio1_luanni;

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    cor VARCHAR(255)
);


INSERT INTO produtos (nome, categoria, preco, descricao, marca, modelo, cor)
VALUES
    ('Smartphone Samsung Galaxy S22', 'Eletrônicos', 100.00, 'Smartphone com tela de 6,2 polegadas e câmera de 50MP', 'Samsung', 'Galaxy S22', 'Preto'),
    ('Camisa Polo Ralph Lauren', 'Roupas', 50.00, 'Camisa polo de algodão com logotipo da Ralph Lauren', 'Ralph Lauren', 'Polo', 'Branco'),
    ('Arroz Integral Tio João', 'Alimentos', 20.00, 'Arroz integral de alta qualidade e sabor', 'Tio João', 'Integral', 'Verde'),
    ('Notebook Dell Inspiron 15', 'Eletrônicos', 150.00, 'Notebook com tela de 15,6 polegadas e processador Intel Core i5', 'Dell', 'Inspiron 15', 'Cinza'),
    ('Calça Jeans Levi''s 501', 'Roupas', 75.00, 'Calça jeans de alta qualidade e confortável', 'Levi''s', '501', 'Azul'),
    ('Azeite de Oliva Extra Virgem Gallo', 'Alimentos', 30.00, 'Azeite de oliva extra virgem de alta qualidade e sabor', 'Gallo', 'Extra Virgem', 'Amarelo'),
    ('Smartwatch Apple Watch Series 7', 'Eletrônicos', 200.00, 'Smartwatch com tela de 41mm e recursos de saúde e fitness', 'Apple', 'Watch Series 7', 'Rosa'),
    ('Camisa de Futebol Adidas Seleção Brasileira', 'Roupas', 90.00, 'Camisa de futebol oficial da Seleção Brasileira', 'Adidas', 'Seleção Brasileira', 'Laranja'),
    ('Café em Grãos Pilão', 'Alimentos', 40.00, 'Café em grãos de alta qualidade e sabor', 'Pilão', 'Grãos', 'Roxo'),
    ('Tablet Lenovo Tab M10', 'Eletrônicos', 250.00, 'Tablet com tela de 10,1 polegadas e recursos de entretenimento', 'Lenovo', 'Tab M10', 'Cinza');

    DELETE FROM produtos WHERE id = 4;
DELETE FROM produtos WHERE id = 7;

ALTER TABLE produtos ADD COLUMN sem_estoque BOOLEAN DEFAULT FALSE;


UPDATE produtos SET sem_estoque = TRUE WHERE id != 2;


SELECT * FROM produtos ORDER BY sem_estoque, id LIMIT 5;
