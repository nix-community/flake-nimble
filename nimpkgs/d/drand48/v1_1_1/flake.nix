{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
  inputs.src-drand48-v1_1_1.flake = false;
  inputs.src-drand48-v1_1_1.type = "github";
  inputs.src-drand48-v1_1_1.owner = "JeffersonLab";
  inputs.src-drand48-v1_1_1.repo = "drand48";
  inputs.src-drand48-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-drand48-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drand48-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drand48-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}