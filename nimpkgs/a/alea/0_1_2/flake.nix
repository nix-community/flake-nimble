{
  description = ''Define and compose random variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-alea-0_1_2.flake = false;
  inputs.src-alea-0_1_2.type = "github";
  inputs.src-alea-0_1_2.owner = "andreaferretti";
  inputs.src-alea-0_1_2.repo = "alea";
  inputs.src-alea-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-alea-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alea-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alea-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}