# dotfiles
My current dot files (and cheat sheets for tmux and vim)


### Intro

Changes at work prompted a rethink of my whole methodology around taking notes, managing tasks and writing.  All of the familiar mac apps that I used to use no longer were available to me and neither were my searching and backup methods. Having a few friends who use tmux and unix text editors to do the bulk of their work, and always being curious about if such a method would work for me, I took the opportunity during this major change to take the plunge and learn all of the requisite pieces to make a toolchain that was portable work.

Switching text editors from something as easy as Sublime Text to something with a huge learning curve like vim entailed some less-than-totally-effective ramp up time.  I knew things going in so it was less about feeling like I had to know it all and more about picking up the basics enough that I could get around and building on it every day.  This attitude helped with tmux as well, which is a dense and complicated program, but in its basic form, very easily learned. 

I dove into reading about both programs and studied dotfile websites, scoured other user's setups and blog posts and started homing in on what would make this unique set of tools effective for me.  One of the key advantages is that they are so customizable.  Of course, that was one of the most daunting learning curves keeping me from taking the leap before so it was a bit of a double edged sword. 

As I learned more about vim, I started slotting new commands into a text file (see /help directory in this repo) that would serve as an outboard memory. As with all things, if you don't use something every day, you forget it eventually and this file has been referred to over and over as time has gone on and it has proved a valuable resource.  There are hundreds of "vim help" pages out there, but I recommend, if you are going to embark on this journey, you create your own vi commands file and build it up from scratch, organizing it in a way that works for you.  It will help when you need to remember a key command since the file more accurately represents your own way of visual thinking.  Other people's help files never really worked for me but once I created my own, it helped a great deal.

Within a few days, I was comfortable enough with vim that I could get most of my editing done quickly and efficiently.  I had also found a taskpaper plugin (see my .vimrc for details) and had my task management system up and running again. Work notes, writing specs and other jobs were now just as easy as they had been in Sublime.  I could even use macros from a few of the apps that work allowed (Alfred and Keyboard Maestro on macOS) but I was confident that all of these shortcuts could be recreated in vim as well so I didn't sweat the timesavings over purity.  These things were only for work and I was planning on using this entire setup for everything so having the macros on a home machine wasn't critical.

### The Evolution

As time wore on, my .vimrc and .tmux.conf files were trimmed, poked and prodded into a clean and tight configuration that worked well for me, but I wanted to have a transportable setup as well as one that could be installed quickly in case I had to install it on another machine.

This meant I needed to dive in and really learn git so that was another project I took on.  It worked well and this file is one of the fruits of that labor.  

Next I adopted a setup I had seen in other dotfiles that entails a main directory(this dotfiles repo) containing all configuration files and the stub dotfiles just referencing or "sourcing" files in the main directory. You can see these stub files in the /stubs directory and they eventually live in the user's root directory after the install is completed. 
