{
  description = ''Variable length arrays for Nim'';
  inputs.src-vla-master.flake = false;
  inputs.src-vla-master.type = "github";
  inputs.src-vla-master.owner = "bpr";
  inputs.src-vla-master.repo = "vla";
  inputs.src-vla-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vla-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vla-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vla-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}