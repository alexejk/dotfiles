# Alexej’s dotfiles

## Installation

```bash
git clone https://github.com/alexejk/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

## Notes about Git
Git 1.7.10 introduced a new feature of configuration includes.
In `.gitconfig` there is an include setting for `.gitcredentials` which is not present in the repository.
This include file should contain user credentials information simmilar to this:

```
[user]
  name = Jon Doe
	email = jon.doe@me.com
[github]
	user = JonDoe
	token = e3e28085a75159c0a9e631926401e091
```