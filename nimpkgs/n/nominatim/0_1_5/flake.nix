{
  description = ''OpenStreetMap Nominatim API Lib for Nim'';
  inputs.src-nominatim-0_1_5.flake = false;
  inputs.src-nominatim-0_1_5.type = "github";
  inputs.src-nominatim-0_1_5.owner = "juancarlospaco";
  inputs.src-nominatim-0_1_5.repo = "nim-nominatim";
  inputs.src-nominatim-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-nominatim-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nominatim-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nominatim-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}