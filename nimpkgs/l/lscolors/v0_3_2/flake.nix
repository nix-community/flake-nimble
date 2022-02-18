{
  description = ''A library for colorizing paths according to LS_COLORS'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-lscolors-v0_3_2.flake = false;
  inputs.src-lscolors-v0_3_2.type = "github";
  inputs.src-lscolors-v0_3_2.owner = "joachimschmidt557";
  inputs.src-lscolors-v0_3_2.repo = "nim-lscolors";
  inputs.src-lscolors-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lscolors-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lscolors-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lscolors-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}