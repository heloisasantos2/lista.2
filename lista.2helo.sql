Tema 1/ Exercício 3:

SELECT 
    clientes.nome AS nome_cliente,
    pedidos.total AS total_pedido
FROM 
    clientes
LEFT JOIN 
    pedidos ON clientes.cliente_id = pedidos.cliente_id;

Tema 2/ Exercício 2:

SELECT 
    campanhas.nome AS nome_campanha,
    clientes.nome AS nome_cliente
FROM 
    campanhas
INNER JOIN 
    participacoes_campanha ON campanhas.campanha_id = participacoes_campanha.campanha_id
INNER JOIN 
    clientes ON participacoes_campanha.cliente_id = clientes.cliente_id;

Tema 3/ Exercício 4:

SELECT 
    orcamentos.orcamento_id,
    orcamentos.categoria,
    orcamentos.valor_planejado,
    orcamentos.data_inicio,
    orcamentos.data_fim,
    transacoes.transacao_id,
    transacoes.tipo,
    transacoes.valor,
    transacoes.descricao,
    transacoes.data_transacao
FROM 
    orcamentos
RIGHT JOIN 
    transacoes ON orcamentos.orcamento_id = transacoes.orcamento_id;

Tema 4/ Exercício 1:

SELECT 
    prontuarios.prontuario_id,
    pacientes.nome AS nome_paciente,
    prontuarios.medico,
    prontuarios.diagnostico,
    prontuarios.prescricao,
    prontuarios.observacoes
FROM 
    prontuarios
INNER JOIN 
    pacientes ON prontuarios.paciente_id = pacientes.paciente_id;

Tema 5/ Exercício 2:

SELECT 
    movimentacao_estoque.movimentacao_id,
    movimentacao_estoque.produto_id,
    produtos.nome AS nome_produto,
    movimentacao_estoque.quantidade,
    movimentacao_estoque.tipo_movimentacao,
    movimentacao_estoque.data_movimentacao
FROM 
    movimentacao_estoque
INNER JOIN 
    produtos ON movimentacao_estoque.produto_id = produtos.produto_id;