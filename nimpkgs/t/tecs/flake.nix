{
  description = ''Simple ECS implementation for Nim'';
  inputs."tecs-master".url = "path:./master";
  inputs."tecs-v0_1".url = "path:./v0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}