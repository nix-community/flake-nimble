{
  description = ''JSON serialization framework'';
  inputs.src-eminim-master.flake = false;
  inputs.src-eminim-master.type = "github";
  inputs.src-eminim-master.owner = "planetis-m";
  inputs.src-eminim-master.repo = "eminim";
  inputs.src-eminim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-eminim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eminim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eminim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}