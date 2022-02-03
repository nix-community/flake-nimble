{
  description = ''PCP PMDA module bindings'';
  inputs.src-nimpmda-master.flake = false;
  inputs.src-nimpmda-master.type = "github";
  inputs.src-nimpmda-master.owner = "jasonk000";
  inputs.src-nimpmda-master.repo = "nimpmda";
  inputs.src-nimpmda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimpmda-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpmda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpmda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}