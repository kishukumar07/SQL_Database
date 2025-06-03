TOPIC1 "TRANSACTIONS IN SQL "

This is a Small intro about Transactions ...  
   so what is a transaction ?  => a piece of business that is done between people (it is every where )

eg .suresh wants to pay 30 rupees to mahesh in general if we see it is easy ...
but in term of db it is the whole two different things... 

1st . 30 rupees will be debited to suresh account  .
2nd . 30 rupees will be credites to mahesh account .

these two things can be done but while updating or b/w these two phase 1st t0 phase 2  ...
we make the api that is going to first deduct the amount then add it to the amount

first deduction happens but while addition it gives error ... you never want that    ... this will make a big blunder ... in banking systems .

whenever this kind of error (senerios in between where transaction failed )? what we'll do is rather that 
 leaving it to -30  we'll make it leave to its previous state(previous amt before transiction failure ) ... just like undo operation (get back the money)



what are the two commands that we learnt that are specific to  transactions only....
1.commit  
2.Rollback
    
    ~ these are the two specific commands that are in  transactions only 
Transactions supports update late aahh update ,create and delete commands ... 
bcs if you think about it ... 
but in select or read command do you think are you changing anything in db ?? 
     => there is no mean in delay of transaction here .  

now we are cleared with the basics idea of transactions .... 



WHAT ARE THE DIFFERENT RULES THAT ARE  FOLLOWED IN CASE OF A TRANSACTIONS ...
   =>  there comes something known as ACID .  
BREAKING DOWN EACH RULE IN ACID ....
  A ->  stands for ATOMICITY
  C ->  stands for Consistency 
  I ->  Isolation 
  D ->  Durablity 
 

ATOMICITY ....
   > IT SIMPLY SAYS "ALL or NOTHING (steps)" THERE IS NO INTERMEDIATE.  
   > ALL THE OPERATIONS IN THE TRANSACTION IS CONSIDERED TO BE ONE UNIT OR ATOMIC TASK . 
   > in terms of transactions we want to suceed the all things or nothing  there should not be any middle state this is atomicity. 
CONSISTENCY....
   > The constraint puts on the data value should be constant before and after the execution of the transaction .   
   >  THe total amount(sum) in Alice's and BOb's account should be the same before and after the transaction . (no missing chance for money).
ISOLATION....
   >if you are performing multiple transaction on the single database , operation from any transaction should no interfere with operation in other transactions 
   >the execution of all transactions should be isolaed from other transactions 

DURABLITY...(comes after a transaction)
  > all the above three properties should be satisfied while the transaction  in progress . But durablity issues can happen even after the completion of the transaction. 

  > The changes made during the transaction should exist after completion of the transaction . 



this should be known naturally but ofcourse you have to know these terms ACID Rule of transaction in Sql . 




-----------------------------------------------------------------------
 TOPIC2 :  SUB-QURIES_IN_SQL
----------------------------------------------------------------
>> SQL workBench 
   created two table stablized relationship and inserted data 
 with  ref data.sql


-sub -Query ...> .... 

1. find those employees whose sallery is >=the average sallery of all employess ...
=>>
SELECT *
FROM employees
WHERE salary >= (SELECT AVG(salary) FROM employees);

Explanation:
SELECT AVG(salary) FROM employees: Calculates the average salary.
The outer query selects all employees whose salary is greater than or equal to that average.


1. find those employees whose sallery is > the average sallery of all employess ... 
=>>

select * 
from employess 
where sallery > (select avg(sallery ) from employess)  ; 

















