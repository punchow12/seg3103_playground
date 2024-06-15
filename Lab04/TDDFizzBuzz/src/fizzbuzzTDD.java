// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class fizzbuzzTDD {
    public fizzbuzzTDD() {

    }
    public String play(int value) {

        if ((value % 3 == 0) && (value % 5 == 0)) {
            return "fizzbuzz";
        } else if (value % 3 == 0) {
            return "fizz";
        } else if (value % 5 == 0) {
            return "buzz";
        } else {
            return String.valueOf(value);
        }
    }
}