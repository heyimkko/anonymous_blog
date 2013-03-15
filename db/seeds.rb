Post.create :title => "Hello World!",
            :body => "I'm waiting in my cold cell, when the bell begins to chime
                  Reflecting on my past life and it doesn't have much time
                  'Cause at 5 O'clock they take me to the gallows pole, yeah
                  The sands of time for me are running low, running low

                  When the priest comes to read me the last rites
                  Take a look through the bars at the last sights
                  Of a world that has gone very wrong for me"

Post.create :title => "On second thought...",
            :body => "Can it be that there's some sort of error
                  Hard to stop the surmounting terror
                  Is it really the end, not some crazy dream?

                  Somebody please tell me that I'm dreaming
                  It's not easy to stop from screaming
                  But words escape me when I try to speak"

Post.create :title => "Lastly...",
            :body => "Tears fall but why am I crying
                  After all I'm not afraid of dying
                  Don't I believe that there never is an end

                  As the guards march me out to the courtyard
                  Somebody cries from a cell, 'God be with you'
                  If there's a God then why has He let me go? "

Tag.create :name => "Black Maiden"
Tag.create :name => "Heavy Metal"
Tag.create :name => "Hallowed Be Thy Name"
Tag.create :name => "DBC"
Tag.create :name => "My stomach hurts"

PostTag.create :post_id => 1,
                  :tag_id => 1

PostTag.create :post_id => 1,
                  :tag_id => 2

PostTag.create :post_id => 1,
                  :tag_id => 3

PostTag.create :post_id => 2,
                  :tag_id => 1

PostTag.create :post_id => 2,
                  :tag_id => 2

PostTag.create :post_id => 3,
                  :tag_id => 2

PostTag.create :post_id => 3,
                  :tag_id => 3
