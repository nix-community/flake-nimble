{
  description = ''Amazon Web Services (AWS) APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-atoz-1_0_3.flake = false;
  inputs.src-atoz-1_0_3.type = "github";
  inputs.src-atoz-1_0_3.owner = "disruptek";
  inputs.src-atoz-1_0_3.repo = "atoz";
  inputs.src-atoz-1_0_3.ref = "refs/tags/1.0.3";
  inputs.src-atoz-1_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."openapi".type = "github";
  inputs."openapi".owner = "riinr";
  inputs."openapi".repo = "flake-nimble";
  inputs."openapi".ref = "flake-pinning";
  inputs."openapi".dir = "nimpkgs/o/openapi";
  inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-atoz-1_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-atoz-1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}