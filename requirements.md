# Requirements

## Use case diagram
![CrowdSourcingSystem](CrowdSourcingSystem.png)

### See line length of canteen/department bars
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the line length of canteen/department bars around FEUP so they can manage their time better and see the best scheduling options.|
|**Preconditions**| The user must be logged in with FEUP credentials. |
|**Postconditions**| - The user is informed about any opening schedule even if the services are closed. |
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the canteen/department bars option. </br> **3. System:** Shows in percentage bar how much the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the canteen/department bars is off schedule, the app releases a warning giving information about the opening hours.

### See FEUP spots capacity
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user sees the capacity of different spots around FEUP so they can avoid wasting time. |
|**Preconditions**| -The user must be logged in with FEUP credentials.|
|**Postconditions**| - The user is informed about any opening schedule even if the services are closed. | 
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the wanted spot option. </br> **3. System:** Shows in a percentage bar how much of the space is occupied. Also shows the best hours to go to certain spots.|
|**Alternative Flows and Exceptions**| **[Closed Service]** If the service is off schedule, the app releases a warning giving information about the opening hours.

### See parking lot capacity
|||
| --- | --- |
|**Actor**| User|
|**Description**| The user uses the apps feature to see the parking lots capacity to know how full/empty it is.
|**Preconditions**| - The user must be logged in with FEUP credentials. |
|**Postconditions**| - The user is informed about any opening schedule even if the services are closed.  |
|**Normal Flow**| **1. System:** Shows various FEUP spots options. </br> **2. User:** clicks on the parking lot option.</br> **3. System:** Either shows it has available spots and the number or it shows it has no available spots.
|**Alternative Flows and Exceptions**| **[Closed Service]** If the parking lot is closed, the app releases a warning giving information about the opening hours.

### Visualize other possible theoretical classes
|||
| --- | --- |
|**Actor**|User|
|**Description**|The user can see their schedule on the app, and visualize/try other theoretical classes, so they can manage their time better.|
|**Preconditions**| - The user must be logged in with FEUP credentials. |
|**Postconditions**| - The user is informed about any opening schedule even if the services are closed. |
|**Normal Flow**| **1. System:** Shows schedule option. </br> **2. User:** clicks on the canteen/department bars options. </br> **3. System:** Shows in a percentage bar how much the space is occupied. Also shows the best times to go to certain spots.|
|**Alternative Flows and Exceptions**|**[Overlapped Classes]** Shows you options for theoretical classes and warns you if classes are overlapped.|

### See available library seats
|||
| --- | --- |
|**Actor**|  User | 
|**Description** | The user uses the apps feature to see the libraries capacity to better know how full/empty it is, breaking that data into each library floor.|
|**Preconditions**| - The user must be logged in with FEUP credentials. |
|**Postconditions** |- The user is informed about any opening schedule even if the services are closed. |
| **Normal flow** | **1.** The user accesses the application through the mobile phone .<br> **2.** The system shows the list of services available by category.<br> **3.** The user selects the service.<br> **4.** The user can contribute for lotation and/or line statistics .<br> **5.** If one line or service is full, suggest other options in the same category to the user. <br> **6.** The user can log out the application. |
| **Alternative Flows and Exceptions** | **[Closed Service]** If the library is off schedule, the app releases a warning giving information about the opening hours. |

## Domain Model
![Domain Modelling drawio](https://user-images.githubusercontent.com/80784137/160863948-9918caf7-3404-4587-8787-0f2dc4a5044d.png)
