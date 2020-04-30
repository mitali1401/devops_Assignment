# devops_Assignment
curl command is used insted of postman collection.
1.insert data:-
	curl -X POST -d '{"name":"samruddhi bhole","age":23,"department":"dentist","subject":"devops"}' http://localhost:8080/user
2.update data:-
	curl -X PUT -d '{"name":"samruddhi bhole","age":23,"department":"OPD","subject":"anatomy"}' http://localhost:8080/user/7
3.Get data:-
	curl -X GET http://localhost:8080/user
4.Delete data:-
	curl -X DELETE  http://localhost:8080/user/7
	
	
note:- here 7 is id of user which we want to delete
