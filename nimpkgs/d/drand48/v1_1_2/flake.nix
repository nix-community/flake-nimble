{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';
  inputs.src-drand48-v1_1_2.flake = false;
  inputs.src-drand48-v1_1_2.type = "github";
  inputs.src-drand48-v1_1_2.owner = "JeffersonLab";
  inputs.src-drand48-v1_1_2.repo = "drand48";
  inputs.src-drand48-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-drand48-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drand48-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drand48-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}