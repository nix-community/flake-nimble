{
  description = ''Tiny library to check if a system package is already installed.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-checkpack-develop.flake = false;
  inputs.src-checkpack-develop.type = "gitlab";
  inputs.src-checkpack-develop.owner = "EchoPouet";
  inputs.src-checkpack-develop.repo = "checkpack";
  inputs.src-checkpack-develop.ref = "refs/heads/develop";
  inputs.src-checkpack-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-checkpack-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-checkpack-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}