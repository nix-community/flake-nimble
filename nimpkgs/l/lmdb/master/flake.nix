{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lmdb-master.flake = false;
  inputs.src-lmdb-master.type = "github";
  inputs.src-lmdb-master.owner = "FedericoCeratto";
  inputs.src-lmdb-master.repo = "nim-lmdb";
  inputs.src-lmdb-master.ref = "refs/heads/master";
  inputs.src-lmdb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lmdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lmdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}