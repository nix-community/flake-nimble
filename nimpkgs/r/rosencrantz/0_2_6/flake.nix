{
  description = ''A web DSL for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rosencrantz-0_2_6.flake = false;
  inputs.src-rosencrantz-0_2_6.type = "github";
  inputs.src-rosencrantz-0_2_6.owner = "andreaferretti";
  inputs.src-rosencrantz-0_2_6.repo = "rosencrantz";
  inputs.src-rosencrantz-0_2_6.ref = "refs/tags/0.2.6";
  inputs.src-rosencrantz-0_2_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rosencrantz-0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}