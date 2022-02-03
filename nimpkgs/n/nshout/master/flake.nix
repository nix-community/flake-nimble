{
  description = ''Nim bindings for libshout'';
  inputs.src-nshout-master.flake = false;
  inputs.src-nshout-master.type = "github";
  inputs.src-nshout-master.owner = "Senketsu";
  inputs.src-nshout-master.repo = "nshout";
  inputs.src-nshout-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nshout-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nshout-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nshout-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}