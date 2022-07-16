package searchapp

class Hotel {

    String name;
    Integer rating;
    Country country;
    String ref;

    static constraints = {
        name maxSize: 255, unique: 'country'
        rating inList: [1,2,3,4,5]
        ref nullable: true, url: true
    }
}
