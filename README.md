# Sinix / Sin9 - Simple Imperative Nix

This project aims to have similar goals of reproducibility and declarative
dependencies to Nix with some major differences:

- Build scripts don't have a custom language - they can be written in anything
as long as the output conforms to the derivation schema. The scripts should
produce the same derivations given the same inputs, however there can be ones
that check for e.g. new software version releases.

- No sqlite database, the filesystem structure serves as the database

- Standardized external bootstrapping process

## Project notes:

Version 1.0+ of sinix will be written in C89/C99, while the prototypes will be
in a combination of shell scripts and perl.

Cross-compilation is not a priority at the moment - the code might need major
rewriting with breaking changes later to amend this decision.

One of the goals is to use sinix for managing a linux distribution like NixOS.
