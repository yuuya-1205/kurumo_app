import 'package:cloud_firestore/cloud_firestore.dart';

class TraderRepository {
  TraderRepository(this.firestore);
  final FirebaseFirestore firestore;
  final traderCollection = FirebaseFirestore.instance.collection('trader');
  DocumentReference getDocumentRef(String uid) => traderCollection.doc(uid);
}
