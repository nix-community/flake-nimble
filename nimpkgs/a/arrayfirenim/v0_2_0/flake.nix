{
  description = ''A nim wrapper for ArrayFire'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ArrayFireNim-v0_2_0.flake = false;
  inputs.src-ArrayFireNim-v0_2_0.type = "github";
  inputs.src-ArrayFireNim-v0_2_0.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_2_0.repo = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-ArrayFireNim-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ArrayFireNim-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ArrayFireNim-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ArrayFireNim-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}