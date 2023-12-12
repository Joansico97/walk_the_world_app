import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authFirebaseProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final firebaseProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);
