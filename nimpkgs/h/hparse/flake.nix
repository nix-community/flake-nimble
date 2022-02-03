{
  description = ''Text parsing utilities'';
  inputs."hparse-master".url = "path:./master";
  inputs."hparse-v0_2_4".url = "path:./v0_2_4";
  inputs."hparse-v0_2_5".url = "path:./v0_2_5";
  inputs."hparse-v0_2_6".url = "path:./v0_2_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}