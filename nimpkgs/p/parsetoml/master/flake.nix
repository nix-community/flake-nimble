{
  description = ''Library for parsing TOML files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-parsetoml-master.flake = false;
  inputs.src-parsetoml-master.type = "github";
  inputs.src-parsetoml-master.owner = "NimParsers";
  inputs.src-parsetoml-master.repo = "parsetoml";
  inputs.src-parsetoml-master.ref = "refs/heads/master";
  inputs.src-parsetoml-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsetoml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsetoml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsetoml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}