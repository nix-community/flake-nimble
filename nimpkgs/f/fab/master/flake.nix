{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-master.flake = false;
  inputs.src-fab-master.type = "github";
  inputs.src-fab-master.owner = "icyphox";
  inputs.src-fab-master.repo = "fab";
  inputs.src-fab-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fab-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}