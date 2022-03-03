{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-synthesis-v0_1_0.flake = false;
  inputs.src-synthesis-v0_1_0.type = "github";
  inputs.src-synthesis-v0_1_0.owner = "mratsim";
  inputs.src-synthesis-v0_1_0.repo = "Synthesis";
  inputs.src-synthesis-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-synthesis-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-synthesis-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-synthesis-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-synthesis-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}