{
  description = ''InfluxDB API client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimflux-v0_1_0.flake = false;
  inputs.src-nimflux-v0_1_0.type = "github";
  inputs.src-nimflux-v0_1_0.owner = "tdely";
  inputs.src-nimflux-v0_1_0.repo = "nimflux";
  inputs.src-nimflux-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimflux-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."coverage".type = "github";
  # inputs."coverage".owner = "riinr";
  # inputs."coverage".repo = "flake-nimble";
  # inputs."coverage".ref = "flake-pinning";
  # inputs."coverage".dir = "nimpkgs/c/coverage";
  # inputs."coverage".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."coverage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimflux-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimflux-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}