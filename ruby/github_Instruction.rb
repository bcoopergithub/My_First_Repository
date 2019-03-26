If you're struggling with using Git for the morning challenges, follow my guide below!

** GITHUB MORNING CHALLENGES TUTORIAL **

NB.   YOU ARE NOT ALLOWED TO COPY AND PASTE THE COMMANDS. YOU'RE ONLY ALLOWED TO TYPE THEM YOURSELF :wink: Get into the habbit :stuck_out_tongue:


4 -- 9 Every morning

1. In order to set up the git on your computer, do the following:

```git clone https://www.github.com/CoderAcademyEdu/mel-morning-challenges19.git```



2. Set the URL of the github to the alias "origin" using the following command:

```git remote add origin https://www.github.com/CoderAcademyEdu/mel-morning-challenges19.git```



3. CD into the new directory that was created



4. Create a new branch called "my_work" (or something similar) using:

```git branch my_work```



5. To list your current branches, type

```git branch```



NB. If you have done step 3 correctly, it should show:

```* master
     my_work```



5. Every morning when a new morning challenge is posted, make sure you are in the branch master by running

```git branch```

and ensure that "master" has the "*" asterisk beside it (the asterisk shows you what branch you are currently in)

IF MASTER DOES NOT HAVE AN ASTERISK "*" BESIDE IT:
run:

```git checkout master```



6. Pull the latest files from the github by running:

```git pull origin master```

NB. You will NOT be editing files in the "master" branch



7. Switch to your my_work branch using:

```git checkout my_work```



8. Make sure you are in my_work by running:

```git branch```

  (MAKE SURE THAT THE ASTERISK "*" IS NEXT TO YOUR my_work BRANCH!)

eg.
   ```master
 * my_work```



9. Merge all the new files that were obtained in master, with your my_work branch using:

```git merge master```



10. Edit the files to your heart's content!



11. Every morning repeat steps 4 - 9!



FOLLOW THE NEXT SECTION AFTER YOU HAVE EDITED YOUR FILES IN YOUR my_work BRANCH!!


12. After editing your files, add them to the commit staging area by running:

```git add -A```


13. Commit your current changes to the branch by running:

```git commit -m "TYPE ANY MESSAGE YOU WANT HERE!"```


14. The changes are now saved to your my_work branch. If you switch to the master branch (by following step 5) and open a file, you will see that the files are the original that was pulled from the github :slightly_smiling_face: (edited)