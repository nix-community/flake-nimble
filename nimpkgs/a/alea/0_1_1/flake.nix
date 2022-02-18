{
  description = ''Define and compose random variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-alea-0_1_1.flake = false;
  inputs.src-alea-0_1_1.type = "github";
  inputs.src-alea-0_1_1.owner = "andreaferretti";
  inputs.src-alea-0_1_1.repo = "alea";
  inputs.src-alea-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."random".type = "github";
  inputs."random".owner = "riinr";
  inputs."random".repo = "flake-nimble";
  inputs."random".ref = "flake-pinning";
  inputs."random".dir = "nimpkgs/r/random";

  outputs = { self, nixpkgs, flakeNimbleLib, src-alea-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-alea-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-alea-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}