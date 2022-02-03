{
  description = ''utilities for transforming sequences'';
  inputs.src-mutableseqs-master.flake = false;
  inputs.src-mutableseqs-master.type = "github";
  inputs.src-mutableseqs-master.owner = "iourinski";
  inputs.src-mutableseqs-master.repo = "mutableseqs";
  inputs.src-mutableseqs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mutableseqs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mutableseqs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mutableseqs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}