{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bluu-0_0_1.flake = false;
  inputs.src-bluu-0_0_1.type = "github";
  inputs.src-bluu-0_0_1.owner = "disruptek";
  inputs.src-bluu-0_0_1.repo = "bluu";
  inputs.src-bluu-0_0_1.ref = "refs/tags/0.0.1";
  inputs.src-bluu-0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."openapi".type = "github";
  # inputs."openapi".owner = "riinr";
  # inputs."openapi".repo = "flake-nimble";
  # inputs."openapi".ref = "flake-pinning";
  # inputs."openapi".dir = "nimpkgs/o/openapi";
  # inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bluu-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bluu-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}