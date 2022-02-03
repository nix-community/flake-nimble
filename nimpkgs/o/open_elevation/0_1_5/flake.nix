{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';
  inputs.src-open_elevation-0_1_5.flake = false;
  inputs.src-open_elevation-0_1_5.type = "github";
  inputs.src-open_elevation-0_1_5.owner = "juancarlospaco";
  inputs.src-open_elevation-0_1_5.repo = "nim-open-elevation";
  inputs.src-open_elevation-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-open_elevation-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-open_elevation-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-open_elevation-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}