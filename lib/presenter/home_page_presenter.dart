import 'package:firebase_auth/firebase_auth.dart';

import '../interactor/home_page_interactor.dart';

class HomePagePresenter
{
  HomePageInteractor _homePageInteractor = HomePageInteractor();


  HomePageInteractor get homePageInteractor => _homePageInteractor;

  User? getCurrentUser()
  {
    if (FirebaseAuth.instance.currentUser != null)
    {
      return _homePageInteractor.getCurrentFirebaseUser();
    }
    else
    {
      throw Exception('No user signed in');
    }
  }

  void signOut()
  {
    if(FirebaseAuth.instance.currentUser != null)
    {
      _homePageInteractor.signOutFirebaseUser();
    }
    else
    {
      throw Exception('No user to sign out');
    }
  }
}