{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';
  inputs."osrm-master".url = "path:./master";
  inputs."osrm-0_1_5".url = "path:./0_1_5";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}