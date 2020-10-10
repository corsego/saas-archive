#rails db:drop db:create db:migrate db:seed
User.create!(email: 'demo@example.invalid', password: ENV.fetch("DEMO_SEED_PASSWORD"), password_confirmation: ENV.fetch("DEMO_SEED_PASSWORD"))
Tenant.create!(name: "Microsoft")
Member.create!(tenant: Tenant.first, user: User.first, admin: true)
User.update_all confirmed_at: DateTime.now

#User.first.toggle(:superadmin) #will not work because superadmin is not a whitelisted param (good for security)
#User.first.update!(superadmin: true) #will not work because superadmin is not a whitelisted param (good for security)
#Member.first.update!(admin: true)
