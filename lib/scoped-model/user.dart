import './connected_products.dart';

import '../models/user.dart';

mixin UserModel on ConnectedProductsModel {


    void login(String email, String password) {
        authenticatedUser = User(
            id: 'bc123',
            email: email,
            password: password,
        );
    }
}
