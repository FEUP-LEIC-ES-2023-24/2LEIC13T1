
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:martechplace/flutter_flow/flutter_flow_theme.dart';
import 'package:martechplace/index.dart';
import 'package:martechplace/flutter_flow/flutter_flow_util.dart';
import 'package:martechplace/backend/firebase/firebase_config.dart';
import 'package:martechplace/auth/firebase_auth/auth_util.dart';
import 'package:provider/provider.dart';
import 'package:mockito/mockito.dart';

class MockFFAppState extends Mock implements FFAppState {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });
  group('HomePage widget tests', ()
  {
    testWidgets('HomePage AppBar', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.text('MarTech'), findsOneWidget);
    });
    testWidgets('HomePage NavBar', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.byKey(const ValueKey('HomeSelButton')), findsOneWidget);
      expect(find.byKey(const ValueKey('CreateAdButton')), findsOneWidget);
      expect(find.byKey(const ValueKey('ProfileButton')), findsOneWidget);
    });
    testWidgets('HomePage Search Products Button', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.byKey(const ValueKey('searchProductsButton')), findsWidgets);
    });
    testWidgets('HomePage Search Users Button', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.byKey(const ValueKey('usersButton')), findsWidgets);
    });
    testWidgets('HomePage Categories', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.text('Portables'), findsOneWidget);
      expect(find.text('Mobile'), findsOneWidget);
      expect(find.text('Components'), findsOneWidget);
      expect(find.text('Peripherals'), findsOneWidget);
      expect(find.text('Gaming'), findsOneWidget);
    });
    testWidgets('HomePage Ads', (WidgetTester tester) async {
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: HomePageWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.text('Trending'), findsOneWidget);
    });
  });
  group('Create new ad page widget tests', (){
    testWidgets('Create new ad Title', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: CreateNewAdWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.text('Create New Ad'), findsOneWidget);
    });
    testWidgets('Create new ad textFields', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: CreateNewAdWidget()));

      // Verifique se os elementos esperados estão presentes no widget
      expect(find.byKey(const ValueKey('titleAd')), findsWidgets);
      expect(find.byKey(const ValueKey('descriptionAd')), findsWidgets);
      expect(find.byKey(const ValueKey('priceAd')), findsWidgets);
      expect(find.byKey(const ValueKey('locationAd')), findsWidgets);
      expect(find.byKey(const ValueKey('categoriesAd')), findsWidgets);
      expect(find.byKey(const ValueKey('addPhoto')), findsWidgets);
      expect(find.byKey(const ValueKey('createAd')), findsWidgets);
    });
    testWidgets('Create new ad buttons', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpWidget(const MaterialApp(home: CreateNewAdWidget()));

      expect(find.byKey(const ValueKey('addPhoto')), findsWidgets);
      expect(find.byKey(const ValueKey('createAd')), findsWidgets);
    });
  });
  group('Ad Content page widget tests', (){
    testWidgets('Ad Content information', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: AdContentWidget(id: "pztsushvxhpn", adDoc: null,)));
      await tester.pumpAndSettle();
      expect(find.text('Ad Details'), findsOneWidget);
      expect(find.byKey(const ValueKey('adContentImage')), findsWidgets);
      expect(find.byKey(const ValueKey('adContentName')), findsWidgets);
      expect(find.byKey(const ValueKey('adContentPrice')), findsWidgets);
      expect(find.byKey(const ValueKey('adContentLocation')), findsWidgets);
      expect(find.byKey(const ValueKey('adContentDescription')), findsWidgets);
      expect(find.byKey(const ValueKey('adContentDisplay')), findsWidgets);
    });
  });
  group('Delete ad page widget tests', ()
  {
    testWidgets('Delete Ad widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(
          const MaterialApp(home: DeleteAdWidget(id: "pztsushvxhpn",)));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('deleteAdText')), findsWidgets);
      expect(find.byKey(const ValueKey('deleteAdCancelButton')), findsWidgets);
      expect(find.byKey(const ValueKey('deleteAdSureButton')), findsWidgets);
    });
  });
  group('Edit ad page widget tests', ()
  {
    testWidgets('Edit Ad textFields', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(
          const MaterialApp(home: EditAdWidget(aid: "pztsushvxhpn",)));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('editTitleAd')), findsWidgets);
      expect(find.byKey(const ValueKey('editDescriptionAd')), findsWidgets);
      expect(find.byKey(const ValueKey('editPriceAd')), findsWidgets);
      expect(find.byKey(const ValueKey('editCategoryAd')), findsWidgets);
      expect(find.byKey(const ValueKey('editLocationAd')), findsWidgets);
    });
    testWidgets('Edit Ad buttons', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(
          const MaterialApp(home: EditAdWidget(aid: "pztsushvxhpn",)));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('editAdPhoto')), findsWidgets);
      expect(find.byKey(const ValueKey('updateAd')), findsWidgets);
    });
  });
  group('Search Products page widget tests', ()
  {
    testWidgets('Search Products widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      final mockAppState = MockFFAppState();

      await tester.pumpWidget(
        ChangeNotifierProvider<FFAppState>(
          create: (_) => mockAppState,
          child: MaterialApp(home: SearchPageWidget(category: null,)),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Search Products'), findsOneWidget);
      expect(find.byKey(const ValueKey('searchProdBoxButton')), findsWidgets);

    });
  });
  group('Search User page widget tests', ()
  {
    testWidgets('Search User widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      final mockAppState = MockFFAppState();

      await tester.pumpWidget(
        ChangeNotifierProvider<FFAppState>(
          create: (_) => mockAppState,
          child: MaterialApp(home: SearchUserWidget()),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Search Users'), findsOneWidget);
      expect(find.byKey(const ValueKey('searchUserBoxButton')), findsWidgets);
    });
  });
  group('Change Password page widget tests', ()
  {
    testWidgets('Change Password widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: ChangePasswordWidget()));
      await tester.pumpAndSettle();

      expect(find.text('Change Password'), findsOneWidget);
      expect(find.byKey(const ValueKey('passwordText')), findsWidgets);
      expect(find.byKey(const ValueKey('emailPassBox')), findsWidgets);
      expect(find.byKey(const ValueKey('SendLinkButton')), findsWidgets);
    });
  });
  group('Forgot Password page widget tests', ()
  {
    testWidgets('Forgot Password widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: ForgotPasswordWidget()));
      await tester.pumpAndSettle();

      expect(find.text('Forgot Password'), findsOneWidget);
      expect(find.byKey(const ValueKey('emailForgotBox')), findsWidgets);
      expect(find.byKey(const ValueKey('SendLinkButton')), findsWidgets);
    });
  });
  group('Login and Register page widget tests', ()
  {
    testWidgets('Login widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: LoginRegisterWidget()));
      await tester.pumpAndSettle();

      expect(find.text('Sign In'), findsWidgets);
      expect(find.byKey(const ValueKey('emailLoginBox')), findsWidgets);
      expect(find.byKey(const ValueKey('passwordLoginBox')), findsWidgets);
    });
    testWidgets('Register widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: LoginRegisterWidget()));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Sign Up'));
      await tester.pumpAndSettle();

      expect(find.text('Sign Up'), findsWidgets);
      expect(find.byKey(const ValueKey('usernameSignupBox')), findsWidgets);
      expect(find.byKey(const ValueKey('emailSignupBox')), findsWidgets);
      expect(find.byKey(const ValueKey('passwordSignupBox')), findsWidgets);
      expect(find.byKey(const ValueKey('passwordConfirmBox')), findsWidgets);
      expect(find.byKey(const ValueKey('createAccount')), findsWidgets);
    });
  });
  group('Edit profile page widget tests', ()
  {
    testWidgets('Edit profile widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: EditProfileWidget()));
      await tester.pumpAndSettle();


      expect(find.byKey(const ValueKey('uploadProfilePhoto')), findsWidgets);
      expect(find.byKey(const ValueKey('usernameEditBox')), findsWidgets);
      expect(find.byKey(const ValueKey('bioEditBox')), findsWidgets);
      expect(find.byKey(const ValueKey('phoneEditBox')), findsWidgets);
      expect(find.byKey(const ValueKey('changePassword')), findsWidgets);
      expect(find.byKey(const ValueKey('saveEditProfile')), findsWidgets);
    });
  });
  group('FAQ page widget tests', ()
  {
    testWidgets('FAQ page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado

      await tester.pumpWidget(const MaterialApp(home: FaqPageWidget()));
      await tester.pumpAndSettle();


      expect(find.text('What is Martech?'), findsWidgets);
      expect(find.text('How do I make a purchase?'), findsWidgets);
      expect(find.text('How can I contact Martech?'), findsWidgets);
      expect(find.text('How can I return a product?'), findsWidgets);
    });
  });

  group('Profile Menu page widget tests', ()
  {
    testWidgets('Profile Menu page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: ProfileMenuWidget()));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('chatsLink')), findsWidgets);
      expect(find.byKey(const ValueKey('myAdsLink')), findsWidgets);
      expect(find.byKey(const ValueKey('editProfileLink')), findsWidgets);
      expect(find.byKey(const ValueKey('faqLink')), findsWidgets);
      expect(find.byKey(const ValueKey('logOut')), findsWidgets);
    });
  });
  group('Reports page widget tests', ()
  {
    testWidgets('Reports page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: ReportsWidget()));
      await tester.pumpAndSettle();

      expect(find.text('Reports'), findsWidgets);
      expect(find.byKey(const ValueKey('reportsColumn')), findsWidgets);
    });
  });
  group('Seller profile page widget tests', ()
  {
    testWidgets('Seller page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: SellerProfileWidget(sellerId: "VXT6id87kdP0DvEiceyHku1WwLq1")));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('chatWithSeller')), findsWidgets);
      expect(find.byKey(const ValueKey('emailSeller')), findsWidgets);
      expect(find.byKey(const ValueKey('phoneSeller')), findsWidgets);
    });
  });
  group('Chats widget tests', ()
  {
    testWidgets('Chat Menu page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: ChatMenuWidget()));
      await tester.pumpAndSettle();

      expect(find.text('Chat'), findsWidgets);
      expect(find.byKey(const ValueKey('chatContainer')), findsWidgets);
    });
    /*testWidgets('Chats page widgets', (WidgetTester tester) async {
      _overrideOnError();
      // Monte o widget em um ambiente isolado
      await tester.pumpAndSettle();
      await tester.pumpWidget(const MaterialApp(home: ChatsWidget(chatID: chatID, userRef: userRef)));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('usernameChatRow')), findsWidgets);
    });*/
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY WIDGETS LIBRARY')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
