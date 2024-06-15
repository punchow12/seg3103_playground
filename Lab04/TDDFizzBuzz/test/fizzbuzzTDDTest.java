import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

class fizzbuzzTDDTest{
    fizzbuzzTDD game = new fizzbuzzTDD();
    @Test
    void tc1_divisible_by_3() {
        assertEquals("fizz", game.play(3));
    }
    @Test
    void tc2_divisible_by_5() {
        assertEquals("buzz", game.play(5));
    }
    @Test
    void tc3_divisible_by_3_and_5() {
        assertEquals("fizzbuzz", game.play(15));
    }
    @Test
    void tc4_not_a_multiple() {
        assertEquals("14", game.play(14));
    }
}
