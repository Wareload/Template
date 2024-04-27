# nix-shell: shebang#! /usr/bin/env nix-shell
# nix-shell: -i bash -p nodejs-16_x maven openjdk11

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.git
    pkgs.maven
    pkgs.openjdk21
  ];
  shellHook = ''
    alias test='echo "Hello World" > test.txt'
  '';
}
