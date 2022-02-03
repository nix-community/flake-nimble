{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
  inputs.src-stalinsort-master.flake = false;
  inputs.src-stalinsort-master.type = "github";
  inputs.src-stalinsort-master.owner = "tonogram";
  inputs.src-stalinsort-master.repo = "stalinsort";
  inputs.src-stalinsort-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stalinsort-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stalinsort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}