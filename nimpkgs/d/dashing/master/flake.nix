{
  description = ''Terminal dashboards.'';
  inputs.src-dashing-master.flake = false;
  inputs.src-dashing-master.type = "github";
  inputs.src-dashing-master.owner = "FedericoCeratto";
  inputs.src-dashing-master.repo = "nim-dashing";
  inputs.src-dashing-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dashing-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dashing-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dashing-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}