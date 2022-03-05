{
  description = ''CUDA bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimcuda-0_1_5.flake = false;
  inputs.src-nimcuda-0_1_5.type = "github";
  inputs.src-nimcuda-0_1_5.owner = "andreaferretti";
  inputs.src-nimcuda-0_1_5.repo = "nimcuda";
  inputs.src-nimcuda-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-nimcuda-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcuda-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcuda-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcuda-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}