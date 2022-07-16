package searchapp

class Country {

    String name
    String capital

    static constraints = {

        name unique: true, blank: false, maxSize: 255
        capital blank: false, maxSize: 128
    }

    @Override
    String toString() {
        return this.name
    }
}
