# https://nixos.wiki/wiki/Packaging/Python
#
# With nix installed, just run "nix-shell" in this directory, and you'll get a
# shell where you can e.g. run ./test.sh.

with import <nixpkgs> {};
with pkgs.python3Packages;

buildPythonPackage rec {
  name = "gnucash-to-beancount";
  src = ./.;
  propagatedBuildInputs = [ ];
}
