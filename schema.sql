create table public.loans (
  id bigint primary key,
  owner uuid not null default auth.uid() references auth.users(id) on delete cascade,
  data jsonb not null,
  created_at timestamptz not null default now()
);
alter table public.loans enable row level security;

-- Mode A (default): every login sees only its own loans
create policy "own rows" on public.loans for all to authenticated
  using (owner = auth.uid()) with check (owner = auth.uid());

-- Mode B (team): all logged-in staff share the same company data.
-- Drop the policy above and use this instead:
-- create policy "team rows" on public.loans for all to authenticated using (true) with check (true);
