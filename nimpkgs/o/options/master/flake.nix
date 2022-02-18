{
  description = ''Temporary package to fix broken code in 0.11.2 stable.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-options-master.flake = false;
  inputs.src-options-master.type = "github";
  inputs.src-options-master.owner = "fallingduck";
  inputs.src-options-master.repo = "options-nim";
  inputs.src-options-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-options-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-options-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-options-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}