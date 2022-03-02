{
  description = ''Read metadata from jpeg and tiff images.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-metar-v0_1_23.flake = false;
  inputs.src-metar-v0_1_23.type = "github";
  inputs.src-metar-v0_1_23.owner = "flenniken";
  inputs.src-metar-v0_1_23.repo = "metar";
  inputs.src-metar-v0_1_23.ref = "refs/tags/v0.1.23";
  inputs.src-metar-v0_1_23.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-metar-v0_1_23, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metar-v0_1_23;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metar-v0_1_23"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}