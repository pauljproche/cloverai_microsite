CloverAI SaaS Page:
[under construction]
https://pauljproche.github.io/cloverai_frontend/

CloverAI Customer Service Page:
https://www.clover.ai/

CloverAI Design:
https://www.figma.com/design/hlu18FbXV49bEL6p6wEJB0/CloverAI-Visualization?node-id=0-1&m=dev&t=TmLAG6oJfqTbPgdd-1

HOW TO RUN:
1. Terminal a: postgrest postgrest.conf

4. Terminal d:

Verify is running: curl -X POST http://localhost:3000/users
  Ex. output: [{"user_id":1,"username":"jaane_doe","password_hash":"hashed_password_here","email":"jaane@example.com","created_at":"2024-10-02T13:29:51.280571"}, 
 {"user_id":2,"username":"mike2","password_hash":"somepassword","email":"mike2@mike.com","created_at":"2024-10-02T14:08:02.475012"}, 
 {"user_id":3,"username":"jen2","password_hash":"somepassword","email":"jen2@jen.com","created_at":"2024-10-03T11:12:54.046611"}, 
 {"user_id":4,"username":"asdfasdf","password_hash":"asdfasdf","email":"asdf@g.com","created_at":"2024-10-03T11:41:36.410509"}]%    

 Verify postgREST works:
 


Microsite to create:

1. SIGN UP/SIGN IN/DASHBOARD PAGE 
2. ON DASHBOARD PAGE
A.  (KEY MGNT.) CREATE KEY PER USER (ADD, REMOVE)
B.  (SAMPLE MODEL) RUN ON EC2 INSTANCE - cmd line avail. which will run (triggered) auto
i.  PUT SOME TEXT AND PROCESS TEXT IN DASHBOARD GET OUTPUT
C.  CREATE API LIKE OPENAI

STACK:

FE:
html,js

BE: 
postgreSQL

PostgREST
A standalone web server that turns a PostgreSQL database into a RESTful API

FIGMA DESIGN OF THE WEBSITE:
[insert link here]
