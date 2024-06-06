![Screenshot](assets/JacocoDefault.png)
Author Ahmed Babar SID (300454451)
The above image is Jacoco Running without any refactoring, in order words the default report.

As indicated in the screenshot below, 85% branch coverage, 64% instruction coverage.
![Screenshot](assets/lb3-2.png)

I fixed setDay according to Jacoco suggestions
![Screenshot](assets/lb3-3.png)
I comment out Date class method equals()
![](assets/lb3-4.png)
I commented out 1 line from equals()
![asset](lb3-5.png)
I added one more test case
![](assets/lb3-6.png)

In the end I got to 97% instruction coverage + 87% branch coverage. It is difficult to achieve 100% coverage since there are many small details i dont know how to fix. For example it says DateException misses 1 method.

![](assets/lb3-7.png)