# Spring-Session-Redis-Spring-Security-HttpSession-Distribution
This application demonstrates usage of Spring Session with redis to distribute httpSession over multiple nodes.
Uses spring security to implement login functionality.

##Spring session
It's spring developers official project for implement distributed httpSession using Redis to back a httpSession.
Find more info on [official website](https://docs.spring.io/spring-session/docs/current/reference/html5/guides/httpsession.html)

##Redis
Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker.
**Used as distributed session store in this application.**
   
###Download
Redis can be downloaded via [official website](https://redis.io/)
This installation needs bash shell to perform.

###For windows users 
Even though redis project does not officially support Windows, the Microsoft Open Tech group develops and maintains windows version. Can be found on [Github](https://github.com/MicrosoftArchive/redis/releases)
You can download build directly Redis-x64-X.X.XXX.msi or source code from there.
Run redis-server.exe to start the server and redis-cli.exe to connect to this server through the shell.

##Environment

    > Java version: JDK 8
    > Build tool: maven 3+
    > Appication/servlet container: Tested with Apache Tomcat 

Author: Yasitha Thilakaratne

