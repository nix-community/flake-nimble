{
  description = ''Circuit Design language made in Nim'';
  inputs.src-nimcdl-master.flake = false;
  inputs.src-nimcdl-master.type = "gitlab";
  inputs.src-nimcdl-master.owner = "endes123321";
  inputs.src-nimcdl-master.repo = "nimcdl";
  inputs.src-nimcdl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcdl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcdl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcdl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}