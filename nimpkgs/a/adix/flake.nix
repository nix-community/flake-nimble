{
  description = ''An Adaptive Index Library For Nim'';
  inputs."adix-master".url = "path:./master";
  inputs."adix-0_2_0".url = "path:./0_2_0";
  inputs."adix-0_2_1".url = "path:./0_2_1";
  inputs."adix-v0_3_0".url = "path:./v0_3_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}