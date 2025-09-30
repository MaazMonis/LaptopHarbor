# Fix Terminal Errors Plan

- [x] Fix FirebaseDatabase API in lib/Auth/register_page.dart: change .reference() to .ref()
- [x] Fix android/app/build.gradle: move defaultConfig inside android block, set compileSdk to 36, targetSdk to 36
- [x] Update kotlin_version in android/build.gradle to '2.1.0'
- [ ] Run flutter doctor --android-licenses to accept licenses
- [ ] Verify fixes by running flutter build apk
