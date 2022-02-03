{
  description = ''Bisection algorithms ported from Python'';
  inputs.src-bisect-master.flake = false;
  inputs.src-bisect-master.type = "github";
  inputs.src-bisect-master.owner = "berquist";
  inputs.src-bisect-master.repo = "bisect";
  inputs.src-bisect-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bisect-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bisect-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bisect-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}