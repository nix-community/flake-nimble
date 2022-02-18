{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-drand48-v1_0_1.flake = false;
  inputs.src-drand48-v1_0_1.type = "github";
  inputs.src-drand48-v1_0_1.owner = "JeffersonLab";
  inputs.src-drand48-v1_0_1.repo = "drand48";
  inputs.src-drand48-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-drand48-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drand48-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drand48-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}