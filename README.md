# vvv-wordmove

This repo is a provisioner for VVV's wordmove utility.

### Install

```yml
# vvv-custom.yml

utilities:
  core: # The core VVV utility
    # [...]
  wordmove:
    - bin

utility-sources:
  wordmove:
    repo: https://github.com/welaika/vvv-wordmove.git
    branch: master
```

You can read more about VVV's utilities at https://varyingvagrantvagrants.org/docs/en-US/utilities/

### Backstory

[Here](https://github.com/welaika/wordmove/issues/598) you can find when, how and why we decided to open this repo.

### Thanks

Thanks to @tomjn and @Mte90 for reaching us with the clear goal of supporting our communities in mind.

### Disclaimer

This repository is **unmaintained** at the moment. We're shipping this provisioner as is, its code is taken from community contributions and could be outdated; but having this repo makes possible to install Wordmove inside VVV using recent and standard and supported approach.

If anyone out there would like to take over the maintenance, we'll be glad to grant access to the repository and, as Wordmove's maintainers, to collaborate at our best effort possible.
