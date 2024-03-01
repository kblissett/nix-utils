{ nixpkgs }:
rec {
  nameValuePair = name: value: { inherit name value; };
  genAttrs = names: f: builtins.listToAttrs (map (n: nameValuePair n (f n)) names);
  defaultSystems = [ "x86_64-linux"  "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
  forEachDefaultSystem = f: genAttrs defaultSystems (system: f { inherit system; pkgs = import nixpkgs { inherit system; };});
}