{
  description = ''Nim utilities for advanced CPU operations: CPU identification, bindings to assorted intrinsics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cpuwhat-master.flake = false;
  inputs.src-cpuwhat-master.type = "github";
  inputs.src-cpuwhat-master.owner = "awr1";
  inputs.src-cpuwhat-master.repo = "cpuwhat";
  inputs.src-cpuwhat-master.ref = "refs/heads/master";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cpuwhat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cpuwhat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cpuwhat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}