{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';
  inputs.src-chronopipe-master.flake = false;
  inputs.src-chronopipe-master.type = "github";
  inputs.src-chronopipe-master.owner = "williamd1k0";
  inputs.src-chronopipe-master.repo = "chrono";
  inputs.src-chronopipe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chronopipe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronopipe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronopipe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}