### 2.
input: "An office supply company makes two types of printers: color printers and black and white printers. Different sections of the factory with different teams produce each printer. The color printer team can produce at most 20 color printers per day while the black and white printer team can produce at most 30 black and white printers per day. Both teams require use of the same paper tray installing machine and this machine can make at most 35 printers of either type each day. Color printers generate a profit of $200 per printer while black and white printers generate a profit of $70 per printer. How many of each printer should be made to maximize the company's profit? Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 to represent color printers, x_1 to represent black and white printers. Then the optimization problem is:
maximize:
200.0x_0 + 70.0x_1
subject to:
1.0x_0 + 0.0x_1 <= 20.0
0.0x_0 + 1.0x_1 <= 30.0
1.0x_0 + 1.0x_1 <= 35.0


### 3.
input: "An accounting firm has senior accountants earning $3000 per week and junior accountants earning $1000 per week. The contracts with companies to provide accounting services require at least 100 accountants, of whom at least 5 must be senior accountants. To make sure there is enough experience on the accounting team, · The firm wants to keep the weekly wage bill below $150000. Formulate an LP to minimize the wage bill. Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 to represent senior accountants, x_1 to represent junior accountants. Then the optimization problem is:
minimize:
3000.0x_0 + 1000.0x_1
subject to:
-1.0x_0 - 1.0x_1 <= -100.0
-1.0x_0 + 0.0x_1 <= -5.0
3.0x_0 - 1.0x_1 <= 0.0
3000.0x_0 + 1000.0x_1 <= 150000.0



### 4.
input: "Ben is growing apples and pears on his orchard. He has 50 acres available on which he must grow a minimum of 5 acres of apples and a minimum of 10 acres of pears to meet demands. The profit per apple is $2 and the profit per pear is $4. He prefers to grow more pears than apples but limitations in his workforce allow him to grow at most twice the amount of pears as apples. How many of each fruit should Ben grow in order to maximize his profit? What is that profit? Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 be apples, x_1 be pears. Then the optimization problem is:
maximize:
2.0x_0 + 4.0x_1
subject to:
1.0x_0 + 1.0x_1 <= 50.0
-1.0x_0 + 1.0x_1 <= -5.0
1.0x_0 - 1.0x_1 <= -10.0
1.0x_0 + 1.0x_1 <= 2.0




### 5.
input: "A lighting company makes desk-lamps and night-lamps. There is an expected demand of at least 30 desk-lamps and 50 night-lamps each day. However, due to the size of their factory, they can make at most 150 desk-lamps and 180 night-lamps per day. To satisfy a contract, a minimum of 100 lamps must be made each day. If the profit per desk-lamp sold is $5 and the profit per night-lamp sold is $8, how many lamps of each type should be made to maximize profit? What is this profit? Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 be desk-lamps, x_1 be night-lamps. Then the optimization problem is:
maximize:
5.0x_0 + 8.0x_1
subject to:
-1.0x_0 + 0.0x_1 <= -30.0
0.0x_0 - 1.0x_1 <= -50.0
1.0x_0 + 0.0x_1 <= 150.0
0.0x_0 + 1.0x_1 <= 180.0
-1.0x_0 - 1.0x_1 <= -100.0



### 6.
input: "Mr. Roberts want to invest in the telecom and healthcare industries. He has $100000 to invest. He has decided that the amount invested in telecom be at least three times as much as the amount invested in healthcare. But the money invested in telecom must be at most $70000. If investments in telecom earn 3% and investments in healthcare earn 1%, how much should Mr. Roberts invest in each to maximize profit? What is this profit? Transform the above problem into the form of a standard optimization problem."
output:
let x_0 to represent telecom, x_1 to represent healthcare. Then the optimization problem is:
maximize:
0.03x_0 + 0.01x_1
subject to:
1.0x_0 + 1.0x_1 <= 100000.0
-1.0x_0 + 3.0x_1 <= 0.0
1.0x_0 + 0.0x_1 <= 70000.0



### 7.
input: "A farmer has 140 hectares available to grow tomatoes and potatoes. She prefers to plant more tomatoes than potatoes, but the soil and weather conditions allow her to grow at most twice the amount of tomatoes to that of potatoes. In addition, she must grow at least 20 hectares of tomatoes and at least 30 hectares of potatoes to meet community demands. If the profit per hectare of tomatoes is $350 and the profit per hectare of potatoes is $600, how many hectares of each crop should she plant to maximize profit? What is this profit? Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 to represent tomatoes, x_1 to represent potatoes. Then the optimization problem is:
maximize:
350.0x_0 + 600.0x_1
subject to:
1.0x_0 + 1.0x_1 <= 140.0
-1.0x_0 + 0.0x_1 <= -20.0
0.0x_0 - 2.0x_1 <= 0.0
-0.0x_0 - 1.0x_1 <= -30.0




### 8.
input: "A audio company make two types of headphones: wired headphones and wireless headphones. Two different teams make each type of headphones. The wired team can make at most 100 wired headphones per day and the wireless team can make at most 170 wireless headphones per day. Both teams require use of a shared audio testing machine, and this machine can be used to make a maximum of 150 headphones per day. The profit per wired headphone is $50 and the profit per wireless headphone $20. How many of each headphone should be made to maximize profit? Transform the above problem into the form of a standard optimization problem."
output:
let x_0 be wired headphones, x_1 be wireless headphones. Then the optimization problem is:
maximize:
50.0x_0 + 20.0x_1
subject to:
1.0x_0 + 1.0x_1 <= 150.0
1.0x_0 + 0.0x_1 <= 100.0
0.0x_0 + 1.0x_1 <= 170.0



### 9.
input: "Jacob has $3000 to invest. He has decided to invest in his favorite clothing company and his favorite tech company. He has decided that the money invested in his favorite clothing company must be at least four times as much as the amount invested in his favorite tech company. He has also limited himself to invest at most $500 in his favorite tech company. If the money invested in his favorite clothing company earns 7% and the money invested in his favorite tech company earns 10%, how much should he invest in each to maximize his profit? What is this profit? Transform the above problem into the form of a standard optimization problem."
output:
let x_0 to represent favorite clothing company, x_1 to represent favorite tech company. Then the optimization problem is:
maximize:
0.07x_0 + 0.1x_1
subject to:
1.0x_0 + 1.0x_1 <= 3000.0

-1.0x_0 + 4.0x_1 <= 0.0

0.0x_0 + 1.0x_1 <= 500.0



### 10.
input: "Each month a store owner can spend at most $500 on carrots and cucumbers. A carrot costs the store owner $0.30 and a cucumber costs the store owner $0.50. Each carrot is sold for a profit of $0.75 and each cucumber is sold for a profit of $0.80. The owner estimates that the number of cucumbers sold is at most a third of the number of carrots sold. He also estimates that at least 300 carrots but at most 500 carrots are sold each month. How many of each, carrots and cucumbers, should be sold in order to maximize the profit? What is this profit? Transform the above problem into the form of a standard optimization problem."
output:
let x_0 be carrots, x_1 be cucumbers. Then the optimization problem is:
maximize:
0.75x_0 + 0.8x_1
subject to:
0.3x_0 + 0.5x_1 <= 500.0
-1.0x_0 + 1.0x_1 <= 1.0
1.0x_0 - 1.0x_1 <= 300.0
1.0x_0 + 1.0x_1 <= 500.0



### 11.
input: "A farmer wants to manufacture a special plant nutrition using fertilizers A and B. Each kg of fertilizer A contains 13 units of nitrogen, 5 units of phosphoric acid, 6 units of vitamin A and 5 units of vitamin D. Each kg of fertilizer B contains 8 units of nitrogen, 14 units of phosphoric acid, 6 units of vitamin A and 9 units of vitamin D. To be effective, the plant nutrition requires a minimum 220 units of nitrogen, a minimum of 160 units of phosphoric acid, and no more than 350 units of vitamin A. How many kg of each fertilizer should be used to minimize the amount of vitamin D in the nutrition? What is the minimum amount of vitamin D? Transform the above problem into the form of a standard optimization problem."
output:
Let x_0 be fertilizer A, x_1 be fertilizer B. Then the optimization problem is:
minimize:
5.0x_0 + 9.0x_1
subject to:
-13.0x_0 - 8.0x_1 <= -220.0
-5.0x_0 - 14.0x_1 <= -160.0
6.0x_0 + 6.0x_1 <= 350.0