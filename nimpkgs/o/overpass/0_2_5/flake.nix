{
  description = ''OpenStreetMap Overpass API Lib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-overpass-0_2_5.flake = false;
  inputs.src-overpass-0_2_5.type = "github";
  inputs.src-overpass-0_2_5.owner = "juancarlospaco";
  inputs.src-overpass-0_2_5.repo = "nim-overpass";
  inputs.src-overpass-0_2_5.ref = "refs/tags/0.2.5";
  inputs.src-overpass-0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-overpass-0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-overpass-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-overpass-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}