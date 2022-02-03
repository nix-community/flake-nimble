{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';
  inputs."georefar-master".url = "path:./master";
  inputs."georefar-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}