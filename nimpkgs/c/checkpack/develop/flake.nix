{
  description = ''Tiny library to check if a system package is already installed.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-checkpack-develop.flake = false;
  inputs.src-checkpack-develop.type = "gitlab";
  inputs.src-checkpack-develop.owner = "EchoPouet";
  inputs.src-checkpack-develop.repo = "checkpack";
  inputs.src-checkpack-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-checkpack-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-checkpack-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}