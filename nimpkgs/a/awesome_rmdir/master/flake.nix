{
  description = ''Command to remove acceptably empty directories.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-awesome_rmdir-master.flake = false;
  inputs.src-awesome_rmdir-master.type = "github";
  inputs.src-awesome_rmdir-master.owner = "Araq";
  inputs.src-awesome_rmdir-master.repo = "awesome_rmdir";
  inputs.src-awesome_rmdir-master.ref = "refs/heads/master";
  inputs.src-awesome_rmdir-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-awesome_rmdir-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awesome_rmdir-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awesome_rmdir-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}