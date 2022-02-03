{
  description = ''Accurate Floating Point Sums and Products.'';
  inputs.src-AccurateSums-master.flake = false;
  inputs.src-AccurateSums-master.type = "gitlab";
  inputs.src-AccurateSums-master.owner = "lbartoletti";
  inputs.src-AccurateSums-master.repo = "accuratesums";
  inputs.src-AccurateSums-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-AccurateSums-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AccurateSums-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-AccurateSums-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}