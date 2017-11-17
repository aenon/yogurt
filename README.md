# YOGURT

<img src="yogurt.png" width="152px" alt="yogurt logo">

## NAME

`yogurt` — a frontend to pacman based on `yaourt`, with human readable operations and options.

## SYNOPSIS

`yogurt` specific usage:

```
yogurt <operation> [packages]
```

example
```
yogurt update
yogurt upgrade
yogurt search PACKAGENAME
```

calling `yaourt`:

```
yogurt <operation> [options] [packages]
```

example
```
yogurt -Si PACKAGENAME
```

## DESCRIPTION

`yogurt` is a simple frontend to `pacman` based on `yaourt`, providing operations easy to understand for humans.

## OPERATIONS

| Operation 	| Effect	|
| ------------- |-------------  |
| `update`	| `yaourt -Sy`	|
| `search` 	| `yaourt -Ss` 	|
| `show` 	| `yaourt -Si`	|
| `install` 	| `yaourt -S`	|
| `upgrade` 	| `yaourt -Syu`	|
| `remove` 	| `yaourt -Rs`	|
| `purge` 	| `yaourt -Rsn`	|
| `depends`	| `yaourt -Si $@ \| grep "Depends On \\\|Name"` |
| `clean` 	| `yaourt -Scc`	|
| `autoclean` 	| `yaourt -Sc`	|
| `autoremove` 	| `yaourt -R $(yaourt -Qdtq)` |
| `list-installed`| `yaourt -Q` 	|
| `list-manual` 	| `yaourt -Qe` 	|
| `list-auto` 	| `yaourt -Qd` 	|


## LICENSE

`yogurt` is published under [GPL V3](LICENSE.md). The `bash_completion` file is in public domain.

## LOGO

[Yogurt by Vashte Johnson](https://thenounproject.com/term/yogurt/52570/) from the [Noun Project](https://thenounproject.com/).

## TO-DO

* Finish `bash_completion`.
