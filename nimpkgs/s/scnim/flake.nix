{
  description = ''Develop SuperCollider UGens in Nim'';
  inputs."scnim-master".url = "path:./master";
  inputs."scnim-0_0_1".url = "path:./0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}