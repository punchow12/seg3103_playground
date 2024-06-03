**Exercise 1**
The following are my test case Values 


|     | Test Case                         | Expected Result               | Actual Result                  | Verdict |
| --- | --------------------------------- | ----------------------------- | ------------------------------ | ------- |
| T1  | ![Screenshot](Screenshots/Lab2EX1T1.png)| accepted                      | ![Screenshot](Screenshots/Lab2EX1T1_1.png) |fail|
| T2  | ![Screenshot](Screenshots/Lab2EX1T2.png)      | accepted registration request | ![[Lab2EX1T2_2.png]]           | Pass    |
| T3  | ![Screenshot](Screenshots/Lab2EX1T3.png) | accepted registration request | ![Screenshot](Screenshots/Lab2EX1T3_3.png) | Pass    |


**Exercise 2**
These are the Junit Test Results.
![Screenshot](Screenshots/Junite_Lab2_Test.png)
![Screenshot](Screenshots/Junit_Lab_2_test_2.png)
![Screenshot](Screenshots/Junit_Lab_2_test_3.png)

Tutorial 2

EC-1 Valid inputs
month <=12 month > 0 
day <=31, day > 0
year >= 0
EC-2 Invalid inputs
year < 0
day > 31 
month > 12
EC-2.1 day, month <= 0
EC-2.2; Invalid values Leap year
EC-2.3; Invalid Values 31st on 30day month


TC-1: 31/12/0000
TC-2: 32/13/-1
TC-2.1: 0/0/2021
TC-2.2: 29/2/1001
TC-2.3: 31/6/2002
