{
  description = "My nix utility functions";

  inputs = {};

  outputs = { ... }: 
  let
    lib = import ./lib.nix;
  in
  {
    inherit lib;
  };
}
