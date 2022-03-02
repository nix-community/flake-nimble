{
  description = ''Define and compose random variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-alea-0_1_5.flake = false;
  inputs.src-alea-0_1_5.type = "github";
  inputs.src-alea-0_1_5.owner = "andreaferretti";
  inputs.src-alea-0_1_5.repo = "alea";
  inputs.src-alea-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-alea-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."random".type = "github";
  # inputs."random".owner = "riinr";
  # inputs."random".repo = "flake-nimble";
  # inputs."random".ref = "flake-pinning";
  # inputs."random".dir = "nimpkgs/r/random";
  # inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alea-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alea-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}