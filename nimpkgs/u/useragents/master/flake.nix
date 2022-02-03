{
  description = ''User Agent parser for nim.'';
  inputs.src-useragents-master.flake = false;
  inputs.src-useragents-master.type = "github";
  inputs.src-useragents-master.owner = "treeform";
  inputs.src-useragents-master.repo = "useragents";
  inputs.src-useragents-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-useragents-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-useragents-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-useragents-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}