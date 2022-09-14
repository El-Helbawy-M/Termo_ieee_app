// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../../../source/firebase/firestore_helper.dart';
// import '../../../source/puplic_model.dart';
//
// class CustomerCubit extends Cubit<ProfileCustomerStates> {
//   CustomerCubit() : super(ProfileCustomerInitialState());
//
//   static CustomerCubit get(context) => BlocProvider.of(context);
//   FirestoreHelper helper = FirestoreHelper();
//   Mapper? customerModel;
//
//   void getCustomerData() {
//     emit(ProfileCustomerLoadingState());
//     FirebaseFirestore.instance
//         .collection('Customers')
//         .doc()
//         .get()
//         .then((value) {
//       customerModel = Mapper(SingleMapper, value.data());
//       emit(GetProfileCustomerSuccessState());
//     }).catchError((error) {
//       emit(GetProfileCustomerErrorState(error.toString()));
//     });
//   }
// }
