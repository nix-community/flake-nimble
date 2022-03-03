{
  description = ''utilities for transforming sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mutableseqs-master.flake = false;
  inputs.src-mutableseqs-master.type = "github";
  inputs.src-mutableseqs-master.owner = "iourinski";
  inputs.src-mutableseqs-master.repo = "mutableseqs";
  inputs.src-mutableseqs-master.ref = "refs/heads/master";
  inputs.src-mutableseqs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mutableseqs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mutableseqs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mutableseqs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}