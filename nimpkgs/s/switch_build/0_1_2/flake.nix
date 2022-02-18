{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-switch_build-0_1_2.flake = false;
  inputs.src-switch_build-0_1_2.type = "github";
  inputs.src-switch_build-0_1_2.owner = "jyapayne";
  inputs.src-switch_build-0_1_2.repo = "switch-build";
  inputs.src-switch_build-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-switch_build-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-switch_build-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-switch_build-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}