Once github is setup, execute these commands from within the target directory.

First, add the changed file to the queue for a push to github by using git add

> git add filename

this adds the file to the queue

Then you need to commit those changes to the current branch.

> git commit -m"here is a commit message"

this commits all files added to the current branch, but they are still local.

once all of those files are changed, added and committed, you need to push 

> git push -u origin master
