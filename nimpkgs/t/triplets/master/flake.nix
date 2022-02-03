{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-master.flake = false;
  inputs.src-triplets-master.type = "github";
  inputs.src-triplets-master.owner = "linksplatform";
  inputs.src-triplets-master.repo = "Data.Triplets";
  inputs.src-triplets-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-triplets-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}