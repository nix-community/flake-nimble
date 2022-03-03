{
  description = ''Accurate Floating Point Sums and Products.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-AccurateSums-master.flake = false;
  inputs.src-AccurateSums-master.type = "gitlab";
  inputs.src-AccurateSums-master.owner = "lbartoletti";
  inputs.src-AccurateSums-master.repo = "accuratesums";
  inputs.src-AccurateSums-master.ref = "refs/heads/master";
  inputs.src-AccurateSums-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-AccurateSums-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AccurateSums-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-AccurateSums-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}