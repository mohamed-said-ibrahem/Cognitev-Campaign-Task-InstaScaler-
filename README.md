# Business Problem
Being online business requires special marketing skills. Creating campaigns, managing
</br>
campaigns and making sure that the money spent to get traffic from different advertising
</br>
platforms became more challenging and time consuming.
</br>
Being an online businesses you need to focus on the core functionality they do instead of
</br>
wasting time, money and effort managing your digital campaigns
</br></br>

# Tasks

1. Create a RESTful ​ campaign ​ resource. Campaign data will be
</br>
a. Name
</br>
b. Country
</br>
c. Budget
</br>
d. Goal
</br>
e. category. If category is not provided you need to extract it from the provided
</br></br>
# "dummy" category extraction service.
</br>
2. Create a reporting endpoint that accepts
</br>
a. Dimensions​ (used to group data by these fields)
</br>
b. Fields​ (Array of fields to return in each campaign)
</br>
c. Duration [​ start and end dates​ ]
</br>
3. Develop a UI to draw the analysis results generated from the analyze service (mentioned
</br>
in point 2)
</br>
# Example: 
</br>
if the provided data are
</br>
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


