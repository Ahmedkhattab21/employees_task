abstract class UserState {}

class InitialState extends UserState{}

class OnGetUsersLoadingState extends UserState{}
class OnGetUsersSuccessState extends UserState{}
class OnGetUsersErrorState extends UserState{}


class OnGetTodoLoadingState extends UserState{}
class OnGetTodoSuccessState extends UserState{}
class OnGetTodoErrorState extends UserState{}