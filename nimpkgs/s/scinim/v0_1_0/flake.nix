{
  description = ''The core types and functions of the SciNim ecosystem'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-scinim-v0_1_0.flake = false;
  inputs.src-scinim-v0_1_0.type = "github";
  inputs.src-scinim-v0_1_0.owner = "SciNim";
  inputs.src-scinim-v0_1_0.repo = "scinim";
  inputs.src-scinim-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-scinim-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."polynumeric".type = "github";
  inputs."polynumeric".owner = "riinr";
  inputs."polynumeric".repo = "flake-nimble";
  inputs."polynumeric".ref = "flake-pinning";
  inputs."polynumeric".dir = "nimpkgs/p/polynumeric";
  inputs."polynumeric".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polynumeric".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scinim-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scinim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}