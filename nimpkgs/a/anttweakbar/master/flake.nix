{
  description = ''nim wrapper around the AntTweakBar c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-anttweakbar-master.flake = false;
  inputs.src-anttweakbar-master.type = "github";
  inputs.src-anttweakbar-master.owner = "krux02";
  inputs.src-anttweakbar-master.repo = "nimAntTweakBar";
  inputs.src-anttweakbar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-anttweakbar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-anttweakbar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-anttweakbar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}