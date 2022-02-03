{
  description = ''A nimrod wrapper for libalpm'';
  inputs.src-nimalpm-master.flake = false;
  inputs.src-nimalpm-master.type = "github";
  inputs.src-nimalpm-master.owner = "barcharcraz";
  inputs.src-nimalpm-master.repo = "nimalpm";
  inputs.src-nimalpm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimalpm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimalpm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimalpm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}