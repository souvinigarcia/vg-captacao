-- Cole isso no SQL Editor do Supabase

create table imoveis (
  id uuid default gen_random_uuid() primary key,
  codigo text, edificio text, bairro text, endereco text,
  apto text, bloco text, andar text, area text, vagas text,
  dorms text, suites text, banheiros text,
  valor text, cond text,
  imobiliaria text, proprietario text, telefone text,
  obs text, cep text,
  status text default 'Disponível',
  created_at timestamp with time zone default now()
);

alter table imoveis enable row level security;

create policy "Acesso pessoal" on imoveis
  for all using (true) with check (true);
