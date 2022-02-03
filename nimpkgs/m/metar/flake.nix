{
  description = ''Read metadata from jpeg and tiff images.'';
  inputs."metar-master".url = "path:./master";
  inputs."metar-v0_1_23".url = "path:./v0_1_23";
  inputs."metar-v0_1_25".url = "path:./v0_1_25";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}