{
  description = ''A web DSL for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rosencrantz-0_1_6.flake = false;
  inputs.src-rosencrantz-0_1_6.type = "github";
  inputs.src-rosencrantz-0_1_6.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_6.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rosencrantz-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}