{
  description = ''A random variable generating library for nim.'';
  inputs.src-randgen-master.flake = false;
  inputs.src-randgen-master.type = "github";
  inputs.src-randgen-master.owner = "YesDrX";
  inputs.src-randgen-master.repo = "randgen";
  inputs.src-randgen-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-randgen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-randgen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-randgen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}