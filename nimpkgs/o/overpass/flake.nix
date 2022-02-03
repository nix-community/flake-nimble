{
  description = ''OpenStreetMap Overpass API Lib'';
  inputs."overpass-master".url = "path:./master";
  inputs."overpass-0_0_1".url = "path:./0_0_1";
  inputs."overpass-0_2_5".url = "path:./0_2_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}