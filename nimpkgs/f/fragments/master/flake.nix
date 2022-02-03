{
  description = ''Our very personal collection of utilities'';
  inputs.src-fragments-master.flake = false;
  inputs.src-fragments-master.type = "github";
  inputs.src-fragments-master.owner = "fragcolor-xyz";
  inputs.src-fragments-master.repo = "fragments";
  inputs.src-fragments-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fragments-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fragments-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fragments-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}