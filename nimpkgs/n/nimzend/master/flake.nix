{
  description = ''Native Nim Zend API glue for easy PHP extension development.'';
  inputs.src-nimzend-master.flake = false;
  inputs.src-nimzend-master.type = "github";
  inputs.src-nimzend-master.owner = "metatexx";
  inputs.src-nimzend-master.repo = "nimzend";
  inputs.src-nimzend-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimzend-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimzend-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimzend-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}