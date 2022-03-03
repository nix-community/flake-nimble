{
  description = ''A library for colorizing paths according to LS_COLORS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lscolors-v0_3_1.flake = false;
  inputs.src-lscolors-v0_3_1.type = "github";
  inputs.src-lscolors-v0_3_1.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_3_1.repo = "nim-lscolors";
  inputs.src-lscolors-v0_3_1.ref = "refs/tags/v0.3.1";
  inputs.src-lscolors-v0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lscolors-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lscolors-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lscolors-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}