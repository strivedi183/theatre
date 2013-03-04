User.delete_all
Ticket.delete_all
Theater.delete_all
Movie.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@bob.com', :password => 'bob', :password_confirmation => 'bob')
u2 = User.create(:name => 'Joe', :email => 'joe@joe.com', :password => 'joe', :password_confirmation => 'joe')
u3 = User.create(:name => 'Sue', :email => 'sue@sue.com', :password => 'sue', :password_confirmation => 'sue')
u4 = User.create(:name => 'Admin', :email => 'admin@admin.com', :password => 'admin', :password_confirmation => 'admin')
u4.is_admin = true
u4.save

m1 = Movie.create(:name => 'Movie 1')
m2 = Movie.create(:name => 'Movie 2')
m3 = Movie.create(:name => 'Movie 3')

r1 = Theater.create(:name => 'Theater 1', :location => 'uptown')
r2 = Theater.create(:name => 'Theater 2', :location => 'midtown')
r3 = Theater.create(:name => 'Theater 3', :location => 'downtown')

t1 = Ticket.create();
t2 = Ticket.create();
t3 = Ticket.create();
t4 = Ticket.create();
t5 = Ticket.create();
t6 = Ticket.create();
t7 = Ticket.create();
t8 = Ticket.create();
t9 = Ticket.create();
t10 = Ticket.create();
t11 = Ticket.create();
t12 = Ticket.create();
t13 = Ticket.create();
t14 = Ticket.create();
t15 = Ticket.create();
t16 = Ticket.create();
t17 = Ticket.create();
t18 = Ticket.create();
t19 = Ticket.create();
t20 = Ticket.create();
t21 = Ticket.create();
t22 = Ticket.create();
t23 = Ticket.create();
t24 = Ticket.create();
t25 = Ticket.create();
t26 = Ticket.create();
t27 = Ticket.create();
t28 = Ticket.create();
t29 = Ticket.create();
t30 = Ticket.create();

r1.movie = m1
r1.save

r2.movie = m2
r2.save

r3.movie = m3
r3.save

r1.tickets = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10]
r2.tickets = [t11, t12, t13, t14, t15, t16, t17, t18, t19, t20]
r3.tickets = [t21, t22, t23, t24, t25, t26, t27, t28, t29, t30]


