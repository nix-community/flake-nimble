{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sequester-v0_1_0.flake = false;
  inputs.src-sequester-v0_1_0.type = "github";
  inputs.src-sequester-v0_1_0.owner = "fallingduck";
  inputs.src-sequester-v0_1_0.repo = "sequester";
  inputs.src-sequester-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-sequester-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sequester-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequester-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sequester-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}