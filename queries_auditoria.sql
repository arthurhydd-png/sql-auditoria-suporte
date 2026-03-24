-- projeto: Auditoria de Chamados e Performance N1
-- objetivo: Identificar chamados parados e inconsistências no banco de dados.

-- 1. Buscar todos os chamados que estão 'Abertos' há mais de 48 horas (Críticos)
SELECT id_chamado, data_abertura, cliente 
FROM chamados 
WHERE status = 'Aberto' 
AND data_abertura < DATE_SUB(NOW(), INTERVAL 2 DAY);

-- 2. Identificar clientes que abriram mais de 5 chamados na mesma semana (Problema Sistêmico)
SELECT cliente, COUNT(*) as total_erros
FROM chamados
WHERE data_abertura >= '2026-03-20'
GROUP BY cliente
HAVING total_erros > 5;

-- 3. Investigar erro de login: Buscar usuários com status 'Inativo' que tentaram acessar
SELECT id_usuario, nome, ultima_tentativa 
FROM usuarios 
WHERE status = 'Inativo' 
AND ultima_tentativa IS NOT NULL;
