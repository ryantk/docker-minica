# Minica on docker

[Docker image here](https://hub.docker.com/r/ryantk/minica)

## Minica

[View repo here](https://github.com/jsha/minica)

## Usage

```
$ docker run -it -v /your/desired/output/dir:/output ryantk/minica --domains foo.dev
```

Then retreive your certificates:

```
$ ls /your/desired/output/dir/foo.dev
cert.pem  key.pem
```