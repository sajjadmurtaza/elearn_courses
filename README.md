# matching customer partners

Ruby Version: 3.0.0

Rails Version: 7.0.0.rc1

Simple API to fetch/create courses. Courses can be filterable as well.

### Key files

    
    app
    ├── controller
    │      ├── api                             
    │           └── v1                        
    │               └── courses_controller  
    │
    ├── models                    
    │      ├── course
    |      ├── coach
    |      └── activity
    |
    ├── resources
    │      ├── couch 
    |      ├── activity
    |      └── course 
    |
    └──  specs
    

### Workflow - How does it work?

The following diagram show the process/workflow of the application.


    Please Postman/ Insomnia to test.

    GET / http://localhost:3000/api/v1/courses


    
 
    │    1. GET request  │ 
    ├──────────────────────────────────────────── │     
    │                                             ├                        
    │    2. It return all courses                 │               
    │──────────────────────────────────────────── │
    │    3. With filter params                    │
    │    It return mached courses                 │
    ├──────────────────────────────────────────── │ 
    │    4. by pass <ID> will return specic course│ 
    ├──────────────────────────────────────────── │ 
    │    3. create course                         │ 
    │ ────────────────────────────────────────────│

***
**Setup**

* first clone the directory 
                      ```
                      git clone git@github.com:git@github.com:sajjadmurtaza/elearn_courses.git'
                      ```
 *  ```cd matching_customer_and_partner```

 *  ```bundle install ```
 *  ```rake db:create```
 *  ```rake db:migrate```
 *  ```rake db:seed```

 or

 *  ```rake db:setup```
 
 *  ```rails s ```
 
 Then open Postman or Insomnia or any API Testing Tool to connect with server
 
 * Enter url ```http://localhost:3000/api/v1/courses``` and pass parameters as json

It will return all course.

You can also pass the filter params

![alt text](https://raw.githubusercontent.com/sajjadmurtaza/SchedulyBridge/master/app/assets/images/3.png "MP1 Screenshot")

For one course

```http://localhost:3000/api/v1/courses<COURSE_ID>```

To create a course

Enter url ```POST http://localhost:3000/api/v1/courses``` and pass parameters as json

    {
      "data": {
        "type": "courses",
        "attributes": {
          "name": "Computer Security"
        },
        "relationships": {
          "coach": {
            "data": {
              "type": "coaches",
              "id": "1"
            }
          }
        }
      }
    }

![alt text](https://raw.githubusercontent.com/sajjadmurtaza/SchedulyBridge/master/app/assets/images/1.png "MP Screenshot")


### Specs

run ``` bundle exe rspec   ``` to run the tests


* [rspec-rails](https://github.com/rspec/rspec-rails) - testing framework
* [byebug](https://github.com/deivid-rodriguez/byebug) -  debugger for Ruby