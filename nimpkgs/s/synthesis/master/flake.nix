{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';
  inputs.src-synthesis-master.flake = false;
  inputs.src-synthesis-master.type = "github";
  inputs.src-synthesis-master.owner = "mratsim";
  inputs.src-synthesis-master.repo = "Synthesis";
  inputs.src-synthesis-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-synthesis-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-synthesis-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-synthesis-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}