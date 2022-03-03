{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-analytics-v0_2_0.flake = false;
  inputs.src-analytics-v0_2_0.type = "github";
  inputs.src-analytics-v0_2_0.owner = "dom96";
  inputs.src-analytics-v0_2_0.repo = "analytics";
  inputs.src-analytics-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-analytics-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."uuids".type = "github";
  # inputs."uuids".owner = "riinr";
  # inputs."uuids".repo = "flake-nimble";
  # inputs."uuids".ref = "flake-pinning";
  # inputs."uuids".dir = "nimpkgs/u/uuids";
  # inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."osinfo".type = "github";
  # inputs."osinfo".owner = "riinr";
  # inputs."osinfo".repo = "flake-nimble";
  # inputs."osinfo".ref = "flake-pinning";
  # inputs."osinfo".dir = "nimpkgs/o/osinfo";
  # inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-analytics-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-analytics-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-analytics-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}