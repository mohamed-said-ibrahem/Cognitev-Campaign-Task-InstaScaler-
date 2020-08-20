# Business Problem
Being online business requires special marketing skills. Creating campaigns, managing campaigns and making sure that the money spent to get traffic from different advertising platforms became more challenging and time consuming.

Being an online businesses you need to focus on the core functionality they do instead of wasting time, money and effort managing your digital campaigns.

# Tasks

1. Create a RESTful ​ campaign ​ resource. Campaign data will be
a. Name

b. Country

c. Budget

d. Goal

e. category. If category is not provided you need to extract it from the provided


# Dummy category extraction service.

2. Create a reporting endpoint that accepts

a. Dimensions​ (used to group data by these fields).

b. Fields​ (Array of fields to return in each campaign).

c. Duration [​ start and end dates​ ]

3. Develop a UI to draw the analysis results generated from the analyze service (mentioned in point 2)

# Example: 

if the provided data are

[{
"name": "n1",
"country": "USA",
"budget": 149,
"goal": "Awareness",
"category": "Technology"
}, {
"name": "n2",
"country": "USA",
"budget": 149,
"goal": "Awareness",
"category": "Sports"
}, {
"name": "n3",
"country": "EGY",
"budget": 149,
"goal": "Awareness",
"category": "Technology"
}, {
"name": "n4",
"country": "USA",
"budget": 149,
"goal": "Awareness",
"category": "Sports"
}, {
"name": "n5",
3"country": "USA",
"budget": 149,
"goal": "Conversion",
"category": "Sports"
}]


