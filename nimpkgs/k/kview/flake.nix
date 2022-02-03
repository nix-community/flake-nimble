{
  description = ''For karax html preview.'';
  inputs."kview-master".url = "path:./master";
  inputs."kview-v0_1_0".url = "path:./v0_1_0";
  inputs."kview-v0_1_2".url = "path:./v0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}