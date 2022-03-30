# LineScape

## Product Vision

- For FEUP students who don't want to wait in lines, LineScape is an app that uses crowd sourcing to tell you how big lines at FEUP are, as well as the capacity of certain spots like the library, department bars, parking lot, etc. Right now, there is no alternative to the service provided by our project besides the students just trying their luck and risking having to wait more time in lines or not have seats in classes or in the library.

## Features
- **Canteen lines, Student Association and Department Bars:** Creating statistics using a like/dislike button according to the capacity and occupation of the spot.
- **Parking Lot Capacity:** Through crowd-sourcing, the app should be able to give the user feedback about the chance of finding an empty spot at a specific parking lot in FEUP. The app should also allow users to give their own feedback about the parking lot reacting with a Like for signaling when the parking lot has significant space and a Dislike for signaling when it has little space left for parking.
- **Library Seats:** The app allows users to check each floor of the library and understand which floors have more free seats and which have less, presenting each floor with a greener color the emptier it is.
- **Ordering Places:** The app automatically orders the places from emptier to fuller and separates them in the following categories: Library Floors, Places to Eat, Parking Lots, Theorical Classrooms and Study Rooms.
- **Manage Schedule:** The app gives alternatives for theorical classes, only if the statistics show the classroom is full.

## Requirements

### Use case diagram
![es_USECASES drawio](https://user-images.githubusercontent.com/89557480/160858443-44014cf6-9d70-4577-be93-370ab2524b5b.png)


### See line length of canteen/department bars
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the line length of canteen/department bars around FEUP so they can manage their time better and see the best scheduling options.|
|**Preconditions and Postconditions**| The user must be logged in with FEUP credentials.|
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the canteen/department bars option. </br> **3. System:** Shows in percentage bar how much the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the canteen/department bars is off schedule, the app releases a warning giving information about the opening hours.
### See FEUP spots capacity
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the capacity of different spots around FEUP so they can avoid wasting time. |
|**Preconditions and Postconditions**| The user must be logged in with FEUP credentials.|
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the wanted spot option. </br> **3. System:** Shows in a percentage bar how much of the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the service is off schedule, the app releases a warning giving information about the opening hours.
### See parking lot capacity
|||
| --- | --- |
|**Actor**| User|
|**Description**| The user uses the apps feature to see the parking lots capacity to know how full/empty it is.
|**Preconditions and Postconditions**|The user must be logged in with FEUP credentials.
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the parking lot option.</br> **3. System:** Either shows it has available spots and the number or it shows it has no available spots.
|**Alternative Flows and Exceptions**| **[Closed Service]** If the parking lot is closed, the app releases a warning giving information about the opening hours.
### Visualize other possible theoretical classes
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user can see their schedule on the app, and visualize/try other theoretical classes, so they can manage their time better.|
|**Preconditions and Postconditions**| The user must be logged in with FEUP credentials.|
|**Normal Flow**| **1. System:** Shows schedule option. </br> **2. User:** clicks on the canteen/department bars options. </br> **3. System:** Shows in a percentage bar how much the space is occupied. Also shows the best times to go to certain spots.|
|**Alternative Flows and Exceptions**|**[Overlapped Classes]** Shows you options for theoretical classes and warns you if classes are overlapped.|

### See available library seats
|||
| --- | --- |
|**Actor**|  User | 
|**Description** | The user uses the apps feature to see the libraries capacity to better know how full/empty it is, breaking that data into each library floor.|
|**Preconditions and Postconditions** | - The user must be logged in with FEUP credentials. <br> - FEUP needs to have previously defined schedules for every service. </br> - The user is informed about any opening schedule even if the services are closed. <br> - Each available service is constantly updated. |
| **Normal flow** | **1.** The user accesses the application through the mobile phone .<br> **2.** The system shows the list of services available by category.<br> **3.** The user selects the service.<br> **4.** The user can contribute for lotation and/or line statistics .<br> **5.** If one line or service is full, suggest other options in the same category to the user. <br> **6.** The user can log out the application. |
| **Alternative Flows and Exceptions** | **[Closed Service]** If the library is off schedule, the app releases a warning giving information about the opening hours. |
