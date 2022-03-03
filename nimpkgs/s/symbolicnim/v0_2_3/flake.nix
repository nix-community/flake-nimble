{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-symbolicnim-v0_2_3.flake = false;
  inputs.src-symbolicnim-v0_2_3.type = "github";
  inputs.src-symbolicnim-v0_2_3.owner = "HugoGranstrom";
  inputs.src-symbolicnim-v0_2_3.repo = "symbolicnim";
  inputs.src-symbolicnim-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-symbolicnim-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."terminaltables".type = "github";
  # inputs."terminaltables".owner = "riinr";
  # inputs."terminaltables".repo = "flake-nimble";
  # inputs."terminaltables".ref = "flake-pinning";
  # inputs."terminaltables".dir = "nimpkgs/t/terminaltables";
  # inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-symbolicnim-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-symbolicnim-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-symbolicnim-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}