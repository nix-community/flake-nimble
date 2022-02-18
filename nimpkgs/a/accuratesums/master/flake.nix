{
  description = ''Accurate Floating Point Sums and Products.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-accuratesums-master.flake = false;
  inputs.src-accuratesums-master.type = "gitlab";
  inputs.src-accuratesums-master.owner = "lbartoletti";
  inputs.src-accuratesums-master.repo = "accuratesums";
  inputs.src-accuratesums-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-accuratesums-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-accuratesums-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-accuratesums-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}