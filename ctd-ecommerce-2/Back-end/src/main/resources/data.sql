INSERT INTO categories (name, criado) VALUES ('Computadores', NOW());
INSERT INTO categories (name, criado) VALUES ('Notebooks', NOW());
INSERT INTO categories (name, criado) VALUES ('Tablets e Celulares', NOW());
INSERT INTO categories (name, criado) VALUES ('TV', NOW());
INSERT INTO categories (name, criado) VALUES ('Promoção de Páscoa', NOW());

INSERT INTO products (title, description, price, image, criado) VALUES
('Computador Completo Fácil Intel 4GB SSD 120GB Monitor 19.',
'Nossos computadores são equipados com os mais recentes processadores de alta velocidade.',
1729.50, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Intel Core i5 8GB SSD 240GB Monitor 19.',
'Execute suas atividades de forma eficaz e com alto desempenho e baixo consumo de energia.',
2066.10, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Computador Pc Cpu Intel Core i3 Com Hdmi 4GB HD 500GB Windows 10 Pro Desktop.', 'Computador Roca Forte projetado para garantir a produtividade no seu dia a dia O desempenho que você precisa para uma jornada eficiente.',
1423.90, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Computador Desktop Intel Core i5 Com Bluetooth 8GB HD 500GB Hdmi Windows 10 Teclado Mouse Pc Wifi.',
'Este computador foi feito para atender todas as necessidades do seu cotidiano, proporcionando a você robustez, design moderno e rapidez.',
1615.40, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Computador Pc Cpu Intel Core i5 Com Hdmi 8GB HD 500GB Windows 10 Teclado Mouse Desktop.',
'Acompanhado dos processadores Intel da linha Core i5, este computador foi feito para atender todas as necessidades do seu cotidiano.',
2250.70, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Notebook Dell Inspiron I15-3501-A10P Intel Pentium Gold-7505 4GB 128GB W10 HD 15.6.',
'Processador Intel Pentium Gold: ideal para as tarefas do dia a dia. Memória e armazenamento pensados para o dia a dia.',
2612.50, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Notebook Acer Aspire 5 A514-54-52TY Intel Core i5 11ª Gen Windows 11 Home 8GB 256GB sdd 14.',
'Modelo: Notebook Acer Aspire 5 A514-54-52TYSistema Operacional:Windows 11 Homecpu e Chipset:Intel Core i5 – 1135G7 Quad Core.',
1863.55, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Tablet Samsung Galaxy A T295 32GB 4G Tela 8 Android Quad-Core 2GHz, 2GB RAM, Câmera 8MP AF + 2MP - Preto.',
'Descubra um companheiro prático no Galaxy Tab A (8.0”), um tablet que se destaca do básico e acrescenta algo a mais.',
1029.60, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Smartphone Motorola Moto E7 Dual Chip Android 10 Tela 6.5.',
'Desenvolvido com tecnologia de ponta, o Smartphone Motorola E7 conta com performance super responsiva, de processador octa-core de 2.0 GHz.',
798.0, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Smart TV 50 UHD Samsung 4k 50AU7700 Processador Crystal 4k Tela Sem Limites Visual Livre de Cabos Alexa Built In.',
'Com uma exclusiva tela sem bordas aparentes, a TV destaca apenas as imagens que você quer ver e nada mais.',
3100.99, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Smart Tv 43 UHD Samsung 4k 43AU7700 Processador Crystal 4k Tela Sem Limites Alexa Built In Controle Único.',
'O processador Crystal 4K transforma tudo o que você assiste em resolução próxima à 4K. Com uma exclusiva tela sem bordas aparentes.',
2410.60, 'Caminho da imagem', NOW());
INSERT INTO products (title, description, price, image, criado) VALUES
('Smart TV LG OLED 55 4K OLED55A1 Dolby Vision IQ Dolby Atmos Inteligência Artificial Thinqai Google Alexa.',
'Os pixels que se autoiluminam dispensam os painéis de luz de fundo, garantindo telas extremamente finas que podem ser instaladas bem rente à parede com o suporte exclusivo.',
1780.89, 'Caminho da imagem', NOW());

INSERT INTO productscategories (product_id, category_id) VALUES (1, 1);
INSERT INTO productscategories (product_id, category_id) VALUES (2, 1);
INSERT INTO productscategories (product_id, category_id) VALUES (3, 1);
INSERT INTO productscategories (product_id, category_id) VALUES (4, 1);
INSERT INTO productscategories (product_id, category_id) VALUES (5, 1);
INSERT INTO productscategories (product_id, category_id) VALUES (6, 2);
INSERT INTO productscategories (product_id, category_id) VALUES (7, 2);
INSERT INTO productscategories (product_id, category_id) VALUES (8, 3);
INSERT INTO productscategories (product_id, category_id) VALUES (9, 3);
INSERT INTO productscategories (product_id, category_id) VALUES (10, 4);
INSERT INTO productscategories (product_id, category_id) VALUES (11, 4);
INSERT INTO productscategories (product_id, category_id) VALUES (12, 4);
INSERT INTO productscategories (product_id, category_id) VALUES (2, 5);
INSERT INTO productscategories (product_id, category_id) VALUES (5, 5);
INSERT INTO productscategories (product_id, category_id) VALUES (7, 5);
INSERT INTO productscategories (product_id, category_id) VALUES (8, 5);
INSERT INTO productscategories (product_id, category_id) VALUES (10, 5);