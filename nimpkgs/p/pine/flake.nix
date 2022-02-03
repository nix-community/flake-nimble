{
  description = ''Nim Static Blog & Site Generator'';
  inputs."pine-master".url = "path:./master";
  inputs."pine-v0_1_0".url = "path:./v0_1_0";
  inputs."pine-v0_1_1".url = "path:./v0_1_1";
  inputs."pine-v0_1_2".url = "path:./v0_1_2";
  inputs."pine-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}