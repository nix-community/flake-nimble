{
  description = ''A web DSL for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rosencrantz-0_3_8.flake = false;
  inputs.src-rosencrantz-0_3_8.type = "github";
  inputs.src-rosencrantz-0_3_8.owner = "andreaferretti";
  inputs.src-rosencrantz-0_3_8.repo = "rosencrantz";
  inputs.src-rosencrantz-0_3_8.ref = "refs/tags/0.3.8";
  inputs.src-rosencrantz-0_3_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rosencrantz-0_3_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}