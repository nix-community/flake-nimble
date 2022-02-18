{
  description = ''Localization package for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-loco-develop.flake = false;
  inputs.src-loco-develop.type = "github";
  inputs.src-loco-develop.owner = "moigagoo";
  inputs.src-loco-develop.repo = "loco";
  inputs.src-loco-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loco-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loco-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loco-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}