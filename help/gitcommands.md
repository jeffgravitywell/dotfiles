Once github is setup, execute these commands from within the target directory.

First, add the changed file to the queue for a push to github by using git add

> git add filename

this adds the file to the queue

Then you need to commit those changes to the current branch.

> git commit -m"here is a commit message"

this commits all files added to the current branch, but they are still local.

once all of those files are changed, added and committed, you need to push 

> git push -u origin master

Using this command will stage all files in your repository, which includes all new, modified, and deleted files. The command is as follows:

> git add -A

Another way to do this would be to omit the -A option and just specify a period to indicate all files in the current working directory:

> git add .
Note: The command git add . only stages files in the current directory and not any subdirectories, whereas git add -A will stage files in subdirectories as well.

## Stage all New and Modified Files
The previous commands will also remove a file from your repository if it no longer exists in the project. If that is an undesired behavior in your case then you should use the --ignore-removal option, which will only stage new and modified files:

> git add --ignore-removal .

## Stage all Modified and Deleted Files
Another variation of this command would be to only stage modified and deleted files, but not any new files. For many existing projects this is actually a safer command than the others since it only affects files already tracked by the repo, and it won't add any others unless you specifically tell it to.

This behavior is achieved via the -u flag, which is shorthand for the --update option:

> git add -u

## Adding Files by Wildcard
Although this technically isn't adding all files, it's another way to add a batch of files. Git allows you to add multiple files at once by using wildcard patterns.

So, for example, if you wanted to add all Python files in your current directory to your repo you'd want to use a command like this:

> git add *.py
Although, most projects have subdirectories, in which case you'd have to run this command on each one to add all of your Python files. But there is a faster way. Instead you could use the ** syntax, which matches all subdirectories.

So, for another example, this command would add all JavaScript files, including those in subdirectories:

> git add **/*.js
Another way to do this would be to omit the -A option and just specify a period to indicate all files in the current working directory:

> git add .
Note: The command git add . only stages files in the current directory and not any subdirectories, whereas git add -A will stage files in subdirectories as well.

## Stage all New and Modified Files
The previous commands will also remove a file from your repository if it no longer exists in the project. If that is an undesired behavior in your case then you should use the --ignore-removal option, which will only stage new and modified files:

> git add --ignore-removal .

## Stage all Modified and Deleted Files
Another variation of this command would be to only stage modified and deleted files, but not any new files. For many existing projects this is actually a safer command than the others since it only affects files already tracked by the repo, and it won't add any others unless you specifically tell it to.

This behavior is achieved via the -u flag, which is shorthand for the --update option:

> git add -u

## Adding Files by Wildcard
Although this technically isn't adding all files, it's another way to add a batch of files. Git allows you to add multiple files at once by using wildcard patterns.

So, for example, if you wanted to add all Python files in your current directory to your repo you'd want to use a command like this:

> git add *.py
Although, most projects have subdirectories, in which case you'd have to run this command on each one to add all of your Python files. But there is a faster way. Instead you could use the ** syntax, which matches all subdirectories.

So, for another example, this command would add all JavaScript files, including those in subdirectories:

> git add **/*.js
