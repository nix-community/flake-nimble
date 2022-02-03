{
  description = ''nim wrapper around the AntTweakBar c library'';
  inputs."AntTweakBar-master".url = "path:./master";
  inputs."AntTweakBar-v1_0_2".url = "path:./v1_0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}