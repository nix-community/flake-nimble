{
  description = ''Set implementation of disjoint intervals'';
  inputs.src-intervalsets-master.flake = false;
  inputs.src-intervalsets-master.type = "github";
  inputs.src-intervalsets-master.owner = "autumngray";
  inputs.src-intervalsets-master.repo = "intervalsets";
  inputs.src-intervalsets-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-intervalsets-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-intervalsets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-intervalsets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}