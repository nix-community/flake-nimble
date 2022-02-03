{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';
  inputs."lc-master".url = "path:./master";
  inputs."lc-v0_2".url = "path:./v0_2";
  inputs."lc-v0_3".url = "path:./v0_3";
  inputs."lc-v0_4".url = "path:./v0_4";
  inputs."lc-v0_5".url = "path:./v0_5";
  inputs."lc-v0_6".url = "path:./v0_6";
  inputs."lc-v0_7".url = "path:./v0_7";
  inputs."lc-v0_8".url = "path:./v0_8";
  inputs."lc-v0_8_1".url = "path:./v0_8_1";
  inputs."lc-v0_9_0".url = "path:./v0_9_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}