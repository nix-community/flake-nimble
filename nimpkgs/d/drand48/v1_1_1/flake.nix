{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-drand48-v1_1_1.flake = false;
  inputs.src-drand48-v1_1_1.type = "github";
  inputs.src-drand48-v1_1_1.owner = "JeffersonLab";
  inputs.src-drand48-v1_1_1.repo = "drand48";
  inputs.src-drand48-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-drand48-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-drand48-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drand48-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drand48-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}