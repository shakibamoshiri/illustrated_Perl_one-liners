Hello :blush:

This is my idea to put Perl one-liners in more attractive style.
So that you can see the output of each one-liners and understand
it convenience.  
I am not a hacker and of course not even a programmer and *JUST*
I am a new typist in **C++** and **Perl**

Also I am beginner in `writing` English and may be you will find
some mistakes here or on the pictures, so _I apologize about that._

I hope this style of Perl one-liner would be fun and useful for you.

Screenshot: ![illustrate Perl one-liners](https://github.com/k-five/illustrated_Perl_one-liners/blob/master/welcome_to_ipol.png)

Last shot: ![illustrate Perl one-liners](https://github.com/k-five/illustrated_Perl_one-liners/blob/master/last_shot.png)

**License**

Before I created this repository I allowed from [Peteris Krumins](https://github.com/pkrumins)
who have written a book about Perl one-liners and I have read
that book and 99% of the one-liners come from this book. But
a few of them not in the book, like: **generate full password**  
or ...


#What tools have I used?
1. konsole ( terminal of KDE )
2. takes a picture from the window with `Alt + Print` key
   - or using command line: `gnome-screenshot -w -f` that has used it in **spacing** 

3. using **figlet** ( or **toilet** ) to make special text-font on the screen
4. using **lolcat** to colorize the output of figlet
5. using `convert` to make **gif** file form **png** file
   - with: `convert -loop 0 -delay 500 *.png output.gif`

6. using **ffmpeg** to convert **png** file to **mp4** file ( through **STDIN** )
   - with `cat *.png | ffmpeg  -c:v png -f image2pipe -r 0.5 -i - -y test.mp4`

7. using **ffmpeg** to add audio file to *mp4* which I created
   - with: `ffmpeg -i video -i audio -c:v -codec -shortest output`
8. make alias from '#' in .bashrc
   - with: `alias comment:='#'`
9. make a function in .bashrc to clear screen every time that I needed to clear it

```bash
function cls(){
    clear
    figlet -r Perl one-liners | lolcat -d 1
    echo -en "            \e[2;32mSee more illustrated one-liners on my github: \e[2;37m    github.com/k-five\e[0\n"
}
```

# How to use:
first
      - `git clone https://github.com/k-five/illustrated_Perl_one-liners`  
      - `cd illustrated_Perl_one-liners`

Then:  
1. using **animate**
   - `animate *.png` it will show you all png in animation style
   - `animate -delay 100 *.png` it will show you with delay of 1 second

2. using **gnome-open**
   - `gnome-open file.gif` or `gnome-open file.png`

3. using **mpv**
   - `mpv file.mp4`
   - may be you do like download the file and only want to watch in so:
     - `mpv https://github.com/k-five/illustrated_Perl_one-liners/1_numbering/mp4/numbering_slideshow.mp4` it is played for you


#WARNING :warning:
The two below **handy-code** are JUST for fun and show how to use one-liners in use.
Of course everything that you dump, STILL, belongs to the two dictionaries.



# handy-quick-hack with one-liners
### dumps definitions, examples, and sounds file , from Oxford Dictionary Online
#### Still, I am thinking about put it in a video file or a picture! I do not know!

# handy-quick-hack with one-liners 
### dumps definitions, examples, and sounds file, from Longman Dictionary Online
#### Still, I am thinking about put it in a video file or a picture! I do not know!