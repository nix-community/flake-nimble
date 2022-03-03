{
  description = ''Command to remove acceptably empty directories.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-awesome_rmdir-develop.flake = false;
  inputs.src-awesome_rmdir-develop.type = "github";
  inputs.src-awesome_rmdir-develop.owner = "Araq";
  inputs.src-awesome_rmdir-develop.repo = "awesome_rmdir";
  inputs.src-awesome_rmdir-develop.ref = "refs/heads/develop";
  inputs.src-awesome_rmdir-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-awesome_rmdir-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awesome_rmdir-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awesome_rmdir-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}