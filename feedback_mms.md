# Feedback from Matt (mms)

## Overview

Great first impression.  App is clean and sharp.  Code looks good.

Good job keeping your scope achievable.  Code is organized and formatted well.  Items have a single responsibility.  You progressed smoothly, got your MVP working early, and took the time to review and improve. Excellent!

## Project Workflow: How effectively did you plan, execute, and present this project?

Exceeds Expectations.  Awesome readme and planning files.  Your commits show a good progression and comments are clear and helpful.  

Not sure if you did this... if you must edit the devise views, I recommend to generate them, commit, THEN proceed to make your edits.  So you can see *your* changes to the generated forms.

## Technical Requirements: How well does your app demonstrate a grasp of the technologies introduced in class?

Exceeds Expectations.  Good solid coding.  Looks like you got "paperclip" working too.  Impressive.

Local `rake db:seed` raises error:
```
ActiveRecord::InvalidForeignKey: PG::ForeignKeyViolation: ERROR:  insert or update on table "medications" violates foreign key constraint "fk_rails_fc718069ca"
DETAIL:  Key (user_id)=(1) is not present in table "users".

/Users/matt/dev/ga/wdi/wdi6/projects/project2/p2_eddie/db/seeds.rb:7:in `<top (required)>'
```
Looks like I need a User with an id==1 already in the db, before seeding? Let's add the user in the seed file, use that user, and remove the dependency on a specific id.

Asynchronous tasks is a big leap for Project 2.  If you are still interested, check this out: https://ryanboland.com/blog/writing-your-first-background-worker/.  Specifically, the "Running a worker regularly, at set intervals" section.

## Creativity / Interface: How memorable and enjoyable to use is your app?

Meets Expectations: How much fun can medications be?  Right? :)

## Code Quality: How able would an uninformed programmer be to reuse and extend your code?

Meets Expectations: Code is organized and formatted well.  Items have a single responsibility.  You are following Rails conventions.

## Deployment and Functionality: How accessible is your app to those who may want to explore it?

Meets Expectations: Deployed.  Appealing.  Flow is good, but your authentication isn't quite right.  I get an error when anonymous user clicks "Manage Medications".

## Conclusion

A solid project, pushing above meets expectations.  Nice work.
