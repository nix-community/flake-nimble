{
  description = ''Low-level twitter API wrapper library for Nim.'';
  inputs."twitter-master".url = "path:./master";
  inputs."twitter-1_0_0".url = "path:./1_0_0";
  inputs."twitter-1_0_1".url = "path:./1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}