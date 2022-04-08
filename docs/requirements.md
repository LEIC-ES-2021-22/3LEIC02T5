# Requirements

## Use case diagram
![CrowdSourcingSystem](CrowdSourcingSystem.png)

### See line length of canteen/department bars
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the line length of canteen/department bars around FEUP so they can manage their time better and see the best scheduling options.|
|**Preconditions**| The user must be logged in with FEUP credentials. |
|**Postconditions**| If the user contributes for service occupation through the like or dislike button, the statistics about line length will be updated.|
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the canteen/department bars option. </br> **3. System:** Shows in percentage bar how much the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the canteen/department bars is off schedule, the app releases a warning giving information about the opening hours.

### See FEUP spots capacity
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the capacity of different spots around FEUP so they can avoid wasting time. |
|**Preconditions**| The user must be logged in with FEUP credentials.|
|**Postconditions**| If the user contributes for service occupation through the like or dislike button, the statistics about line length will be updated.| 
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the wanted spot option. </br> **3. System:** Shows in a percentage bar how much of the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the service is off schedule, the app releases a warning giving information about the opening hours.

### See parking lot capacity
|||
| --- | --- |
|**Actor**| User|
|**Description**| The user uses the apps feature to see the parking lots capacity to know how full/empty it is.
|**Preconditions**| The user must be logged in with FEUP credentials. |
|**Postconditions**| If the user contributes for service occupation through the like or dislike button, the statistics about line length will be updated.|
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the parking lot option.</br> **3. System:** Either shows it has available spots and the number or it shows it has no available spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the parking lot is closed, the app releases a warning giving information about the opening hours.|

### Visualize other possible theoretical classes
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user can see their schedule on the app, and visualize/try other theoretical classes, so they can manage their time better.|
|**Preconditions**| The user must be logged in with FEUP credentials. |
|**Postconditions**| If the user contributes for service occupation through the like or dislike button, the statistics about the number of students will be updated.|
|**Normal Flow**| **1. System:** Shows schedule option. </br> **2. User:** clicks on a specific class. </br> **3. System:** Shows in a percentage bar how much the space is occupied and gives the opportunity to choose other theoretical class at another hour.|
|**Alternative Flows and Exceptions**|**[Overlapped Classes]** Shows you options for theoretical classes and warns you if classes are overlapped and full.|

### See available library seats
|||
| --- | --- |
|**Actor**|  User | 
|**Description** | The user uses the apps feature to see the libraries capacity to better know how full/empty it is, breaking that data into each library floor.|
|**Preconditions**| The user must be logged in with FEUP credentials. |
|**Postconditions** | The information can change according to the library site that manages the information about the seats on every floor.|
| **Normal flow** | **1.** The user accesses the application through the mobile phone .<br> **2.** The system shows the list of services available by category.<br> **3.** The user selects the service.<br> **4.** The user can contribute for lotation and/or line statistics .<br> **5.** If one line or service is full, suggest other options in the same category to the user. <br> **6.** The user can log out the application. |
| **Alternative Flows and Exceptions** | **[Closed Service]** If the library is off schedule, the app releases a warning giving information about the opening hours. |

## Domain Model

- **User:** Represents a user like the app sees him/her. A user is defined by name (the one in his/her FEUP credentials), type (Student,Teacher...), number (again, the user's number from the FEUP credentials) and the user's preferences on subjects and preferred classes.
- **Curricular Unit:** Represents a Curricular Unit in FEUP, registering its Name, Number, Director and the set of Theoretical Class schedule options available for students attending to it. A user can attend to 0 or more classes (teachers don't attend to classes and there are times in the year where the students may access the app without necessarily attending to any Curricular Unit).
- **Event:** An Event object can represent either a food service, a library floor, a theoretical class, a study room or a parking lot. It is defined by an ID number, a name, a capacity (maximum amount of people that can be eating at a service/sitting in a library floor/attending to a theoretical class/have their car parked on a parking lot), a certain number of positive and negative reactions in terms of occupancy and a occupancy state, defined by those reactions. They also have an opening time and a closing time. An event has additional variables depending on its type.
- **Reaction:** A user can react to an event and the app will register the type of reaction (positive or negative) and the time at which the reaction was submitted. A user can react from 0 to as many events as he/she wants and an event can have reactions from 0 or more users.
- **isFavorite:** isFavorite is simply an association class with a single variable that would track if the user has selected a specific event as his/her favorite. A user can have 0 or more favorite events and an event can be favorited by 0 or more users.
-  **Line:** Represents a line to acess a specific event. An event can have a line or have none. Inside a Line object, the app should store the positive and negative reactions to a certain line and use them to define the line state to be displayed by the app.


![Domain Modelling drawio (1)](https://user-images.githubusercontent.com/80784137/162174213-05eb2c24-da4c-40e9-9e21-c76c42507c59.png)
