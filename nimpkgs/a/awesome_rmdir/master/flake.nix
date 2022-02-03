{
  description = ''Command to remove acceptably empty directories.'';
  inputs.src-awesome_rmdir-master.flake = false;
  inputs.src-awesome_rmdir-master.type = "github";
  inputs.src-awesome_rmdir-master.owner = "Araq";
  inputs.src-awesome_rmdir-master.repo = "awesome_rmdir";
  inputs.src-awesome_rmdir-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-awesome_rmdir-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awesome_rmdir-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awesome_rmdir-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}