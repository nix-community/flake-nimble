{
  description = ''Gene - a general purpose language'';
  inputs.src-gene-master.flake = false;
  inputs.src-gene-master.type = "github";
  inputs.src-gene-master.owner = "gcao";
  inputs.src-gene-master.repo = "gene-new";
  inputs.src-gene-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gene-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gene-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gene-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}