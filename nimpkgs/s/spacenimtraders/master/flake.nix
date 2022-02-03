{
  description = ''A new awesome nimble package'';
  inputs.src-spacenimtraders-master.flake = false;
  inputs.src-spacenimtraders-master.type = "github";
  inputs.src-spacenimtraders-master.owner = "ire4ever1190";
  inputs.src-spacenimtraders-master.repo = "SpaceNimTraders";
  inputs.src-spacenimtraders-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-spacenimtraders-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spacenimtraders-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spacenimtraders-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}