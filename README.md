This is my idea to put Perl one-liners in more attractive style. So that you can see the output of each one-liners and understand it convenience.  
I am a new typist in **C++** and **Perl**, may be you see some mistakes.  
Also I am beginner in `writing` English and may be you will find  
some mistakes here or on the pictures, so _I apologize about that._  

I hope this style of Perl one-liner would be fun and useful for you.  

Screenshot:  
![illustrate Perl one-liners](https://github.com/k-five/illustrated_Perl_one-liners/blob/master/welcome_to_ipol.png)

Last shot:  
![illustrate Perl one-liners](https://github.com/k-five/illustrated_Perl_one-liners/blob/master/last_shot.png)

**License**

I got allowed from [Peteris Krumins](https://github.com/pkrumins)
who have written a book about Perl one-liners and I have read
that book and 99% of the one-liners come from this book. But
a few of them not in the book, like: **generate full password**  
or ...


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



# handy-quick-dump with one-liners
### dumps definitions, examples, and sounds file , from Oxford Dictionary Online
Unfortunately I could not set device in **Ubuntu** to record a video along audio file, so I had to use picture again :).
We do it in three item:
   - item one:
     - first find the address of the site
     - second put the address in a `bash` file
     - third dump which page we want

## item one:
The address of the site : http://www.oxfordlearnersdictionaries.com/

If you search for a word like *see*, you will see this: (in address bar)  
`http://www.oxfordlearnersdictionaries.com/definition/english/see_1?q=see`
Then we copy this and put into a bash file, like this:


Put that in a bash file like this:  
```bash
#!/bin/bash
lynx -dump -source http://www.oxfordlearnersdictionaries.com/definition/english/$1\_1?q=$1
```

Then do this:  
`chmod u+x dump_page.sh`

Just we need to get a word form user and pass it to the `. dump_page.sh` like this:

`clear; read -p "Enter a word:" word && . dump_page.sh $word`

which it will dump the source page of each word that you want. If you enter a word such as **gloomy** it will dump source for the gloomy word.

Lastly we need Perl one-liners, which it will be:


## item two:
dumping examples:
```Perl
perl -lne 'push @M,"$1" while /class="x".+?"> ?([A-Z].+?)<(?!class)/g; END{ foreach $file (@M) { print ++$n," : ",$file =~ /.+[.!?]$/g ? "\e[0;32m$file\e[m" : "\e[1;31mmissed example\e[m" } }'

```

dumping definition:
```Perl
perl -lne 'push @M,"$1" while /class="def".+?"> ?([a-z].+?)<(?!class)/g; END{ foreach $file (@M) { print ++$n," : ",$file =~ / +/g ? "\e[0;32m$file\e[m" : "\e[1;31mmissed example\e[m" } }'

```

dumping hear pronunciation: (us/uk need to use `mpv`)
```Perl
perl -lne 'push @M,"$1" while /data-src-mp3="(.+?\.mp3)/g; END{ print "\e[0;32mUS pronunciation:\e[m"; foreach $file (@M) { $file =~ /us/i && `mpv $file` } }'

```

dumping download pronunciation:(us/uk  need to use `wget`)
```Perl
perl -lne 'push @M,"$1" while /data-src-mp3="(.+?\.mp3)/g; END{ print "\e[0;32mUS pronunciation:\e[m"; foreach $file (@M) { $file =~ /us/i && `wget -c -q --show-progress $file` } }'

```
summary you will have something like this: (for find examples)
```bash

read -p "Enter a word: " word && . dump_page.sh $word | perl -lne 'push @M,"$1" while /class="x".+?"> ?([A-Z].+?)<(?!class)/g; END{ foreach $file (@M) { print ++$n," : ",$file =~ /.+[.!?]$/g ? "\e[0;32m$file\e[m" : "\e[1;31mmissed example\e[m" } }'


```

![dumps from oxford dictionary online](https://github.com/k-five/illustrated_Perl_one-liners/blob/master/dump_oxford.gif)

## item three
Just enjoy :) -- that's it.

# handy-quick-dump with one-liners 
### dumps definitions, examples, and sounds file, from Longman Dictionary Online
#### You can do it by yourself. 