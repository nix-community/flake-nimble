{
  description = ''Rain simulation in your terminal'';
  inputs.src-rain-master.flake = false;
  inputs.src-rain-master.type = "github";
  inputs.src-rain-master.owner = "OHermesJunior";
  inputs.src-rain-master.repo = "rain.nim";
  inputs.src-rain-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rain-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rain-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rain-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}