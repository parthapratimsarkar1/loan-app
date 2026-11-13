# Loan & EMI Manager (static site + Supabase + Vercel)

1. Supabase: new project > SQL Editor > run schema.sql.
2. Authentication > Providers > Email: turn OFF "Allow new users to sign up".
   Authentication > Users > Add user (tick Auto Confirm) for yourself and each staff member.
3. Project Settings > API: copy Project URL and anon public key into config.js.
   Never put the service_role key in this project.
4. Push this folder to GitHub > Vercel > Add New Project > import repo.
   Framework Preset: Other. Build command: empty. Output directory: empty (root). Deploy.
5. Vercel > Settings > Domains to attach your own domain.
6. Backups: Supabase free plan has no daily backups; schedule a pg_dump or upgrade the plan.
