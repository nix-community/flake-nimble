{
  description = ''Nim library with python-like functions and operators'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pylib-master.flake = false;
  inputs.src-pylib-master.type = "github";
  inputs.src-pylib-master.owner = "Yardanico";
  inputs.src-pylib-master.repo = "nimpylib";
  inputs.src-pylib-master.ref = "refs/heads/master";
  inputs.src-pylib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pylib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pylib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pylib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}