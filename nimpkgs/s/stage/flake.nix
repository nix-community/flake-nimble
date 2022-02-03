{
  description = ''nim tasks apply to git hooks'';
  inputs."stage-master".url = "path:./master";
  inputs."stage-v0_3_5".url = "path:./v0_3_5";
  inputs."stage-v0_3_6".url = "path:./v0_3_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}