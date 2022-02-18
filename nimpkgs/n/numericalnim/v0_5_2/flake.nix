{
  description = ''A collection of numerical methods written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-numericalnim-v0_5_2.flake = false;
  inputs.src-numericalnim-v0_5_2.type = "github";
  inputs.src-numericalnim-v0_5_2.owner = "SciNim";
  inputs.src-numericalnim-v0_5_2.repo = "numericalnim";
  inputs.src-numericalnim-v0_5_2.ref = "refs/tags/v0.5.2";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-numericalnim-v0_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numericalnim-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numericalnim-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}