# practice-book-sandi-metz-practical-object-oriented-design-ruby-2e

Install [rbenv](https://github.com/rbenv/rbenv)


Install [prerrequisites](https://github.com/rbenv/ruby-build/wiki#ubuntudebianmint):


```sh
sudo aptitude install wget build-essential autoconf libssl-dev libyaml-dev zlib1g-dev libffi-dev libgmp-dev
```

Install [rbenv-installer](https://github.com/rbenv/rbenv-installer?tab=readme-ov-file#rbenv-installer):

```sh
wget -q https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer -O- | bash
```

Install [rbenv-doctor](wget -q https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-doctor -O- | bash)

```sh
wget -q https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-doctor -O- | bash
```

List Ruby stable versions

```sh
rbenv install -l
```

Install a Ruby version

```sh
rbenv install 4.0.1
```

Set a local Ruby version:

```sh
rbenv local 4.0.1
```

