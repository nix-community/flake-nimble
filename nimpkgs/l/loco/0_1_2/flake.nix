{
  description = ''Localization package for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-loco-0_1_2.flake = false;
  inputs.src-loco-0_1_2.type = "github";
  inputs.src-loco-0_1_2.owner = "moigagoo";
  inputs.src-loco-0_1_2.repo = "loco";
  inputs.src-loco-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loco-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loco-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}