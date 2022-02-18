{
  description = ''Terminal dashboards.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dashing-master.flake = false;
  inputs.src-dashing-master.type = "github";
  inputs.src-dashing-master.owner = "FedericoCeratto";
  inputs.src-dashing-master.repo = "nim-dashing";
  inputs.src-dashing-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dashing-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dashing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dashing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}