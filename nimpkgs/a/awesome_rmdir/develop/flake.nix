{
  description = ''Command to remove acceptably empty directories.'';
  inputs.src-awesome_rmdir-develop.flake = false;
  inputs.src-awesome_rmdir-develop.type = "github";
  inputs.src-awesome_rmdir-develop.owner = "Araq";
  inputs.src-awesome_rmdir-develop.repo = "awesome_rmdir";
  inputs.src-awesome_rmdir-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-awesome_rmdir-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awesome_rmdir-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awesome_rmdir-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}