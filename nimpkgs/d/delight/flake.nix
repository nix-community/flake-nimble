{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';
  inputs."delight-master".url = "path:./master";
  inputs."delight-0_1_0".url = "path:./0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}