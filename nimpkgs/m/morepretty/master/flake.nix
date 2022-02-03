{
  description = ''Morepretty - Does more than nimpretty.'';
  inputs.src-morepretty-master.flake = false;
  inputs.src-morepretty-master.type = "github";
  inputs.src-morepretty-master.owner = "treeform";
  inputs.src-morepretty-master.repo = "morepretty";
  inputs.src-morepretty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-morepretty-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morepretty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-morepretty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}