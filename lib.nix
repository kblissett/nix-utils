rec {
  nameValuePair = name: value: { inherit name value; };
  genAttrs = names: f: builtins.listToAttrs (map (n: nameValuePair n (f n)) names);
}