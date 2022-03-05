{
  description = ''A web DSL for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rosencrantz-0_1_4.flake = false;
  inputs.src-rosencrantz-0_1_4.type = "github";
  inputs.src-rosencrantz-0_1_4.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_4.repo = "rosencrantz";
  inputs.src-rosencrantz-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-rosencrantz-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rosencrantz-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}