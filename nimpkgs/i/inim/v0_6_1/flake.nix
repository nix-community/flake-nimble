{
  description = ''Interactive Nim Shell'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-inim-v0_6_1.flake = false;
  inputs.src-inim-v0_6_1.type = "github";
  inputs.src-inim-v0_6_1.owner = "inim-repl";
  inputs.src-inim-v0_6_1.repo = "INim";
  inputs.src-inim-v0_6_1.ref = "refs/tags/v0.6.1";
  inputs.src-inim-v0_6_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";
  inputs."noise".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-inim-v0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-inim-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}