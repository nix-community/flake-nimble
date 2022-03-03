{
  description = ''Terminal dashboards.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dashing-master.flake = false;
  inputs.src-dashing-master.type = "github";
  inputs.src-dashing-master.owner = "FedericoCeratto";
  inputs.src-dashing-master.repo = "nim-dashing";
  inputs.src-dashing-master.ref = "refs/heads/master";
  inputs.src-dashing-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dashing-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dashing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dashing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}