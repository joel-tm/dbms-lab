1) create table loan with columns number(3),name varchar2(10),BNAME char(2), amount number(3), LDATE date

a)alter table loan to change the size of amount to number(6)

b)add a check constraint on amount to accept amoount between 1000 and 100000

2.insert data to deposit and loan table as shown 
deposit
acc no   name    bname  BALANCE   LDATE
100      anil     b1    8000      10-MAY-15
101      jos      b1    17000     17-JUN-15
102      sheela   b2    6000      18-OCT-14
103      meena    b2    9000      10-JAN-14
104      rajan    b2    5000      12-APR-15
105      kumar    b1    14000     25-MAY-15

loan
LOANNO   NAME    bname  amount    LLDATE
200      anil    b1      25000    10-oct-14
201      joseph  b1      30000    11-mar-14
202      meena   b3      50000    18-FEB-15
203      rani    b2      18000    23-MAR-15
204      reena   b2      17000    27-MAY-15  

a)update balance of deposit table by adding 10% as interest to the balance for ldate prior to 1-jan-15

b)update last date of transaction for deposit as '24-may-15' for accno 104

c)convert all 1st character alone in name to uppercase in deposit and loan tables

d)display the account number and first three characters of name of deposit table 

e)display all details of deposit whose last date of transaction exceeds 1 year

f)update ldate for amount number 103 to include the time also 

g)display account number,name,ldate,along with the time for account number 103

h)find the number of account holders in branch b1 having balace >100u

i)find the average balance for each branch

j)sort the deposit table in ascending order of balance

k)sort the loan table in descending order of name

l)display the average ,maximum  adn sum of balances of deposit for branch B1

m)insert a new row in deposit table for account number 106

n)delete the tuple for accno 106

o)create a copy deposit1 of deposit table

p)drop the table deposit

q)rename the tbale deposit1 to deposit 

r)create a table deposit2 with columns accno,name,balance using deposit table

