# QAC SFIA2 Project

This application is a simple [Flask application](https://flask.palletsprojects.com/en/1.1.x/quickstart/#a-minimal-application), ready to be deployed, for your SFIA2 project.

## Brief

The application must:

- Be deployed to a **Virtual Machine for testing**
- Be deployed in a **managed Kubernetes Cluster for production**
- Make use of a **managed Database solution**

## Application

The application is a Flask application running in **2 micro-services** (*frontend* and *backend*).  

The database directory is available should you: 
  - want to use a MySQL container for your database at any point, *or*
  - want to make use of the `Create.sql` file to **set up and pre-populate your database**.

The application works by:
1. The frontend service making a GET request to the backend service. 
2. The backend service using a database connection to query the database and return a result.
3. The frontend service serving up a simple HTML (`index.html`) to display the result.

### Database Connection


### Environment Variables

The application makes use of **2 environment variables**:

- `DATABASE_URI`: as described above
- `SECRET_KEY`: any *random string* will work here

### Running a Flask Application



![app-diagram](https://i.imgur.com/wnbDazy.png)

## Testing

# *Frontend and Backend Testing*
![frontend and backend]


## Infrastructure

The **Minimum Viable Product** for this project should at least demonstrate the following infrastructure diagram:

![mvp-diagram](https://i.imgur.com/i5qfOas.png)
