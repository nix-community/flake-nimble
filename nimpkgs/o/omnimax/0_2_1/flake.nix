{
  description = ''Max wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-omnimax-0_2_1.flake = false;
  inputs.src-omnimax-0_2_1.type = "github";
  inputs.src-omnimax-0_2_1.owner = "vitreo12";
  inputs.src-omnimax-0_2_1.repo = "omnimax";
  inputs.src-omnimax-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-omnimax-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."omni".type = "github";
  # inputs."omni".owner = "riinr";
  # inputs."omni".repo = "flake-nimble";
  # inputs."omni".ref = "flake-pinning";
  # inputs."omni".dir = "nimpkgs/o/omni";
  # inputs."omni".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."omni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omnimax-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnimax-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omnimax-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}