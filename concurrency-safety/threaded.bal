public function threaded() {
    // Workers will execute simultaneously after calling the threaded function.
    // Due to the concurrent safety inplemented in the cat class we will still receive our expected result. 
    worker Whiskers
    {
        cat.getCat("Whiskers", "Ginger", 7);
    }

    worker Mittens {
        cat.getCat("Mittens", "Tabby", 13);
    }

    worker Sarang
    {
        cat.getCat("Sarang", "Caramel", 5);
    }
}
