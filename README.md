# Hangman game
Hangman is a paper and pencil guessing game for two or more players. 
One player thinks of a word, phrase or sentence and the other(s) tries to guess it by suggesting letters within a 
certain number of guesses.
More on [Wiki](https://en.wikipedia.org/wiki/Hangman_(game)).

The presented version is a console analogue in the `Ruby` language.

## Interface
```
Слово: К О __ О __ __
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |

Ошибки (2): Х, У
У вас осталось ошибок: 5

Введите следующую букву:
```
#### Where:
Hidden word:
```
Слово: К О __ О __ __
```
Gallows visualization:
```
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |

```
Number of mistakes and wrong letters:
```
Ошибки (2): Х, У
```
Remaining attempts:
```
У вас осталось ошибок: 5
```
## Usage

Firstly install the dependencies specified in `Gemfile`

```shell
bundle install
```

Then run the command below in your system console where the `main.rb` file is located.
```shell
bundle exec ruby main.rb
```
Use your keyboard to input letters(one at a time):
```
Введите следующую букву: 
```


To add a new words open a `word.txt` in `/data` folder and add new word on a new line below.

Path to file:
```
hangman_gem/data/words.txt
```


You can choose your colors for interface. How to color - see the [gem](https://github.com/fazibear/colorize) page. 



## License
[MIT](https://choosealicense.com/licenses/mit/)
