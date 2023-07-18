namespace my;

entity Books {
    key id: Integer;
    name: String; 
    price: Decimal;

    author: Association to Authors;
}

entity Authors: Person, Nickname, Common { 
    key id: Integer;

    books: Association to many Books on books.author = $self;
}

type Common {
    name: String;
}

type Person {
    age: Integer;
    height: Decimal;
}

type Nickname {
    nickname: String;
}

// Not allowedin cds v7
// type Person: Common{
//     age: Integer;
//     height: Decimal;
// }

// type Nickname: Common {
//     nickname: String;
// } 