# UNIFY
App architechture.

main() call init() futions and it load to apiClient, Repository and controllers.
- ApiClient: call to some RESTful api, talk to the back end submit data and receive data => make request and load data.(Get and Post Request Body: is a method in ApiClient).
- Repository: is a class, call to Get and Post Request in ApiClient. it to small in real life code
- Controller: is a Class that process data when received from Repository. then send it to UI.

life cycle.
GET request: Ui => Controller => Repo => ApiClient => server
then	ApiClient received data => Repo => Controller to process => Ui.

Post request: Data from Ui => Controller process => Repo Post request => ApiClient => sever.
then sever send a respone to ApiClient => Repo => Controller => Ui.



