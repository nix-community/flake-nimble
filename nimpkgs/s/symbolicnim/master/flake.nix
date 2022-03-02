{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-symbolicnim-master.flake = false;
  inputs.src-symbolicnim-master.type = "github";
  inputs.src-symbolicnim-master.owner = "HugoGranstrom";
  inputs.src-symbolicnim-master.repo = "symbolicnim";
  inputs.src-symbolicnim-master.ref = "refs/heads/master";
  inputs.src-symbolicnim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-symbolicnim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-symbolicnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-symbolicnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}