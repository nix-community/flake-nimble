{
  description = ''Nim library for shared types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-shared-master.flake = false;
  inputs.src-shared-master.type = "github";
  inputs.src-shared-master.owner = "genotrance";
  inputs.src-shared-master.repo = "shared";
  inputs.src-shared-master.ref = "refs/heads/master";
  inputs.src-shared-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shared-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shared-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shared-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}