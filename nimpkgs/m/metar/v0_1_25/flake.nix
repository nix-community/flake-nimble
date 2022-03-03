{
  description = ''Read metadata from jpeg and tiff images.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-metar-v0_1_25.flake = false;
  inputs.src-metar-v0_1_25.type = "github";
  inputs.src-metar-v0_1_25.owner = "flenniken";
  inputs.src-metar-v0_1_25.repo = "metar";
  inputs.src-metar-v0_1_25.ref = "refs/tags/v0.1.25";
  inputs.src-metar-v0_1_25.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-metar-v0_1_25, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metar-v0_1_25;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metar-v0_1_25"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}