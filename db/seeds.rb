User.create!(email: 'demo@example.invalid', password: ENV.fetch("DEMO_SEED_PASSWORD"), password_confirmation: ENV.fetch("DEMO_SEED_PASSWORD"))
Tenant.create!(name: "Microsoft")
Member.create!(tenant: Tenant.first, user: User.first, admin: true)
