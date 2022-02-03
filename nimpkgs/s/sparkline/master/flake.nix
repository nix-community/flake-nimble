{
  description = ''Sparkline library'';
  inputs.src-sparkline-master.flake = false;
  inputs.src-sparkline-master.type = "github";
  inputs.src-sparkline-master.owner = "aquilax";
  inputs.src-sparkline-master.repo = "sparkline-nim";
  inputs.src-sparkline-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sparkline-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparkline-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sparkline-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}