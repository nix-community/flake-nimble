{
  description = ''Command to remove acceptably empty directories.'';
  inputs.src-awesome_rmdir-v0_2_1.flake = false;
  inputs.src-awesome_rmdir-v0_2_1.type = "github";
  inputs.src-awesome_rmdir-v0_2_1.owner = "Araq";
  inputs.src-awesome_rmdir-v0_2_1.repo = "awesome_rmdir";
  inputs.src-awesome_rmdir-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-awesome_rmdir-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awesome_rmdir-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awesome_rmdir-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}