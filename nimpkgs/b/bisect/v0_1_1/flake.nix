{
  description = ''Bisection algorithms ported from Python'';
  inputs.src-bisect-v0_1_1.flake = false;
  inputs.src-bisect-v0_1_1.type = "github";
  inputs.src-bisect-v0_1_1.owner = "berquist";
  inputs.src-bisect-v0_1_1.repo = "bisect";
  inputs.src-bisect-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-bisect-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bisect-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bisect-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}