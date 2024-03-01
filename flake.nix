{
  description = "My nix utility functions";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs = { nixpkgs, ... }: 
  let
    lib = import ./lib.nix { inherit nixpkgs;};
  in
  {
    inherit lib;
  };
}
