# navigation2

Simple application to demostrate Flutter navigator 2.0

-- What works --

Initially system will load splash screen from RunApp

In splash screen initial state is Empty(). In this state checkUserStatusEvent will be dispatched 
and it will invoke method to read shared preferences and check is user token is exist (for now a int value is stored if user is logged in otherwise nothing exists).

//for now i have directly yield GuestUserState();

If user is logged in the the state will change to userState() if not logged in the state will change to GuestUserState().

according to this state the next page(Home or Guest Home) to be navigated will be added to the List<Page> in the MyRouterDelegate class.

In Guest Home Screen Initial State is GuestEmptyState().

When user clicks on either loging or register buttons a bloc events GuestLoginPressedEvent or GuestRegisterPressedEvent will be dispatched.

When one of these dispatched systems state will be change to GuestLoginReadyStatus or GuestRegisterReadyStatus.

Then again next page (Login screen / Register Screen) will be added to the list along with the guest home page. 

Becuase of this we can pop and come back to the Guest Home page.

-- Whats the problem? -- 

When i dispatched the bloc call with a button on pressed application state will be change and page is added to the list as expected but the navigation is not taking place.

I tried dispatching the bloc event directly in side the GuestEmptyState. Then it works fine and navigates the relevent page. 





## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
