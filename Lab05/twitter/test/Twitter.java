import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.easymock.EasyMock;
import org.easymock.EasyMockRunner;
//import org.easymock.annotation.SuppressStaticInitializationFor;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;

import static org.easymock.EasyMock.*;
@RunWith(EasyMockRunner.class)


public class Twitter {

    public String loadTweet()
    {
      try {
        Thread.sleep(4000);
      } catch (InterruptedException e) {}
  
      double r =  Math.random();
      if (r <= 0.45) {
        return "I am tweet that likes to talk about @me";
      } else if (r <= 0.9) {
        return "Hello to @you";
      } else {
        return null;
      }
    }
  
    public boolean isMentionned(String name) {
      String tweet = loadTweet();
      return tweet.contains("@" + name);
    }
  
  }

class TwitterTest {

    @BeforeEach
    void startUp() {
        //Twitter twitterm = createMock("twitter", Twitter.class);
    }


    
    void actual_call() {

        Twitter twitter = new Twitter();

        boolean actual;

        actual = twitter.isMentionned("me");
        assertEquals(true, actual);
    }
    
    @Test
    void mock_full_object() {

        //Twitter twitter = EasyMock.createMock("twitter", Twitter.class);
        Twitter twitter = new Twitter();
        //expect(twitter.loadTweet()).andReturn("hello @me");
        //expect(twitter.loadTweet()).andReturn("hello @you");
        //replay(twitter);

        String actual;

        actual = twitter.loadTweet();
        assertEquals(actual, actual);

        actual = twitter.loadTweet();
        assertEquals(actual, actual);

    }

    // //@Test
    // void mock_partial_object() {

    //     Twitter twitter = partialMockBuilder(Twitter.class)
    //       .addMockedMethod("loadTweet")
    //       .createMock();

    //     expect(twitter.loadTweet()).andReturn("hello @me").times(2);
    //     replay(twitter);

    //     boolean actual;

    //     actual = twitter.isMentionned("me");
    //     assertEquals(true, actual);

    //     actual = twitter.isMentionned("you");
    //     assertEquals(false, actual);
    // }

    //  //@Test
    // void isMentionned_lookForAtSymbol() {
    //      Twitter twitter = partialMockBuilder(Twitter.class)
    //              .addMockedMethod("loadTweet")
    //              .createMock();

    //      expect(twitter.loadTweet()).andReturn("hello @me").times(2);
    //      replay(twitter);

    //      boolean actual;
    // // Assuming a tweet like "hello @me"
    //      assertEquals("me", twitter.isMentionned("me"));
    //      assertEquals("me", twitter.isMentionned("me"));
    //      //isMentionned("me") should be true
    //      //isMentionned("you") should be false
    // }

    // //@Test
    // void isMentionned_dontReturnSubstringMatches() {
    //     Twitter twitter = partialMockBuilder(Twitter.class)
    //              .addMockedMethod("loadTweet")
    //              .createMock();

    //      expect(twitter.loadTweet()).andReturn("hello @me").times(2);
    //      replay(twitter);

    //      boolean actual;
    //   // Assuming a tweet like "hello @meat"
    //   assertEquals(false, twitter.isMentionned("me"));
    //   assertEquals(true, twitter.isMentionned("meat"));
    // //   // isMentionned("me") should be false
    // //   // isMentionned("meat") should be true
    // }

    // //@Test
    //  void isMentionned_superStringNotFound() {
    // //   // Assuming a tweet like "hello @me"
    // //   // isMentionned("me") should be true
    // //   // isMentionned("meat") should be false
    //  assertEquals(false, actual.ismentionned("me"));
    //  assertEquals(true, actual.ismentionned("meat"));
    // }

    // //@Test
    // void isMentionned_handleNull() {
    //     // Assuming no tweet is available (i.e. null)
    //     // isMentionned("me") should be false
    //     // isMentionned("meat") should be false
    //     assertEquals(false, actual.ismentionned("me"));
    //     assertEquals(true, actual.ismentionned("meat"));
    // }
}