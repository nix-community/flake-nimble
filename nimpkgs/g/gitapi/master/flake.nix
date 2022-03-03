{
  description = ''Nim wrapper around the git version control software'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gitapi-master.flake = false;
  inputs.src-gitapi-master.type = "github";
  inputs.src-gitapi-master.owner = "achesak";
  inputs.src-gitapi-master.repo = "nim-gitapi";
  inputs.src-gitapi-master.ref = "refs/heads/master";
  inputs.src-gitapi-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gitapi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gitapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gitapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}