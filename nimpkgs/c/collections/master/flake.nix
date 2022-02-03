{
  description = ''Various collections and utilities'';
  inputs.src-collections-master.flake = false;
  inputs.src-collections-master.type = "github";
  inputs.src-collections-master.owner = "zielmicha";
  inputs.src-collections-master.repo = "collections.nim";
  inputs.src-collections-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-collections-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-collections-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}