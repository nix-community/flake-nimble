{
  description = ''Library for working with arbitrary values + a map data structure.'';
  inputs.src-values-master.flake = false;
  inputs.src-values-master.type = "github";
  inputs.src-values-master.owner = "nim-appkit";
  inputs.src-values-master.repo = "values";
  inputs.src-values-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-values-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-values-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-values-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}