{
  description = ''Interpolation routines for data and animation.'';
  inputs.src-skinterpolate-master.flake = false;
  inputs.src-skinterpolate-master.type = "github";
  inputs.src-skinterpolate-master.owner = "Skrylar";
  inputs.src-skinterpolate-master.repo = "skInterpolate";
  inputs.src-skinterpolate-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-skinterpolate-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skinterpolate-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-skinterpolate-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}