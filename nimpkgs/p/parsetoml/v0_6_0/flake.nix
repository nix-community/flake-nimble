{
  description = ''Library for parsing TOML files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-parsetoml-v0_6_0.flake = false;
  inputs.src-parsetoml-v0_6_0.type = "github";
  inputs.src-parsetoml-v0_6_0.owner = "NimParsers";
  inputs.src-parsetoml-v0_6_0.repo = "parsetoml";
  inputs.src-parsetoml-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsetoml-v0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsetoml-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsetoml-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}