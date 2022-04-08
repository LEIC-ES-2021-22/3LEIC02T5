## Architecture and Design

In this section of the project we will describe the logical and physical architectures of our project.

### Logical Architecture

![image](https://user-images.githubusercontent.com/80784137/162027387-a95451e1-bee3-4476-a931-0e6cfb6f9ae0.png)


### External Services

- **Sigarra's Database:** The external database from where, using the back-end, we will obtain necessary data like Canteen Menus, Class Schedules, information related to the user's account (which will be the same as Sigarra's).

### LineScape App
- **Reaction Logic:** Set of functions and objects that implement every aspect of the Reaction feature and define how a reaction works in the app (how they are stored and treated internally by the app). For a user to react in the app, we need a way to process user inputs.
- **User Preferences:** Set of data, functions and objects that define how user preferences (like Favorite Options, Attended Classes and Preferred Theoretical Class Schedules, for example). These preferences may be altered and edited by the user, so they depend on User Input (e.g., a user can choose his/her favorite options from the ones displayed in the app).
- **User Authentication System:** Data, functions and objects that make user authentication possible, defining anything that may vary from user to user but cannot be changed by the user at all times in the app or can't be chosen by the user, depending on his/her credentials at every moment (for example, a student shouldn't be able to alter his/her class in a specific Curricular Unit through the app and shouldn't be able to switch the Curricular Units he/she is attending either). For authentication to be possible, we need both a way of processing inputs and the info on Sigarra's Database on the user credentials.
- **User Input Processing:** Code that allows the app to read any kind of information that should be given by the user during its use.
- **Event Data Processing:** Code that defines what an event is, what types of events there are (Library Floors, Places to Eat, Theoretical Classes and Parking Lots) and how they should work and be treated by the app.

### Physical Architecture

![PhysicalArchitecture](https://user-images.githubusercontent.com/93594909/162527189-d0392689-6b8d-4511-aecf-3fcc93b0a215.png)
In our app's physical architecture only 2 entities are featured: the Sigarra/uni server where the database with all the information required by the user is and the app itself, which the user interacts with.



### Vertical Prototype
