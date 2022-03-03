{
  description = ''Bindings for SunVox modular synthesizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sunvox-0_1_1.flake = false;
  inputs.src-sunvox-0_1_1.type = "github";
  inputs.src-sunvox-0_1_1.owner = "exelotl";
  inputs.src-sunvox-0_1_1.repo = "nim-sunvox";
  inputs.src-sunvox-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-sunvox-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sunvox-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sunvox-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sunvox-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}