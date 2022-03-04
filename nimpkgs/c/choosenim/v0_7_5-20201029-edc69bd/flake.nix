{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-choosenim-v0_7_5-20201029-edc69bd.flake = false;
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.type = "github";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.owner = "dom96";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.repo = "choosenim";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.ref = "refs/tags/v0.7.5-20201029-edc69bd";
  inputs.src-choosenim-v0_7_5-20201029-edc69bd.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimarchive".type = "github";
  inputs."nimarchive".owner = "riinr";
  inputs."nimarchive".repo = "flake-nimble";
  inputs."nimarchive".ref = "flake-pinning";
  inputs."nimarchive".dir = "nimpkgs/n/nimarchive";
  inputs."nimarchive".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";
  inputs."analytics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";
  inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenim-v0_7_5-20201029-edc69bd, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_7_5-20201029-edc69bd;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_7_5-20201029-edc69bd"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}