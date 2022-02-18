{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-oolib-develop.flake = false;
  inputs.src-oolib-develop.type = "github";
  inputs.src-oolib-develop.owner = "glasses-Neo";
  inputs.src-oolib-develop.repo = "OOlib";
  inputs.src-oolib-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oolib-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oolib-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oolib-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}