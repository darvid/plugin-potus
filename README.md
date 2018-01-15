<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### Prompt Of The United States (POTUS)
> The best plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

<img src="https://i.imgur.com/LQVHi7y.png">

POTUS makes your shell prompt great again by providing you with the best,
most honest, high IQ birthed feedback for your exit codes. Now you can
nourish your mind AND immediately respond to BAD commands and FAKE NEWS.

Currently, POTUS only works with [Oh My Fish][omf-link] and the
[fish shell](https://fishshell.com/), because fish is the BEST shell.
Support for sub-par shells such as bash and zsh may be forthcoming.


## Install

To install the plugin itself, simply run:

```fish
$ omf install https://github.com/darvid/plugin-potus
```

In order for you to get the **BEST possible prompt**, however, you need
to be using a terminal emulator that supports SIXEL, such as GNOME
terminal, Konsole, xterm, and Mintty. Support for
[iTerm2's escape sequences](https://iterm2.com/documentation-images.html)
may be added at a future date.

You also need [libsixel](https://github.com/saitoha/libsixel) installed,
and the ``img2sixel`` command. Most major Linux distributions should
have a package available,
[here](https://packages.ubuntu.com/xenial/libsixel-bin) is Ubuntu's.
Go ahead and install [ImageMagick](https://www.imagemagick.org/), too,
the **BEST possible prompt** requires it.

Of course, if you're a peasant hater and don't want to work hard enough
to get the **BEST possible prompt**, then you can always turn it off
with ``set -g potus_the_best_prompt no``.

## Usage

If you can't think of a command to run, why not ``potus`` itself? You'll
be guaranteed the BEST and most appropriate response to an arbitrary
status code of your choosing.

```fish
$ potus [status code]
```

Of course, POTUS is always around to provide valuable and mentally
stimulating advice even when you need it most. Such as after every
command you execute on the GREATEST SHELL ON EARTH!

<img src="https://i.imgur.com/xmbdo5r.png">

# License

[MIT][mit] © [darvid][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/darvid
[contributors]:   https://github.com/darvid/plugin-potus/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
