CREATE TABLE IF NOT EXISTS agendamentos(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL, telefone TEXT NOT NULL, servico TEXT NOT NULL,
  data TEXT NOT NULL, horario TEXT NOT NULL, obs TEXT,
  status TEXT NOT NULL DEFAULT 'ativo',
  criado TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE UNIQUE INDEX IF NOT EXISTS uq_slot ON agendamentos(data,horario) WHERE status IN ('ativo','confirmado');
-- status: ativo (aguardando confirmacao), confirmado, cancelado
