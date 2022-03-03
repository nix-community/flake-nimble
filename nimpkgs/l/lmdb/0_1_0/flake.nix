{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lmdb-0_1_0.flake = false;
  inputs.src-lmdb-0_1_0.type = "github";
  inputs.src-lmdb-0_1_0.owner = "FedericoCeratto";
  inputs.src-lmdb-0_1_0.repo = "nim-lmdb";
  inputs.src-lmdb-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-lmdb-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lmdb-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lmdb-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}