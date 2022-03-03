{
  description = ''Root finding functions for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-roots-v0_1_2.flake = false;
  inputs.src-roots-v0_1_2.type = "github";
  inputs.src-roots-v0_1_2.owner = "BarrOff";
  inputs.src-roots-v0_1_2.repo = "roots";
  inputs.src-roots-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-roots-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-roots-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-roots-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-roots-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}