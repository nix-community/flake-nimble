{
  description = ''nim wrapper around the AntTweakBar c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-anttweakbar-v1_0_2.flake = false;
  inputs.src-anttweakbar-v1_0_2.type = "github";
  inputs.src-anttweakbar-v1_0_2.owner = "krux02";
  inputs.src-anttweakbar-v1_0_2.repo = "nimAntTweakBar";
  inputs.src-anttweakbar-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-anttweakbar-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anttweakbar-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-anttweakbar-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}