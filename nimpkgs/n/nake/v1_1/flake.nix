{
  description = ''make-like for Nim. Describe your builds as tasks!'';
  inputs.src-nake-v1_1.flake = false;
  inputs.src-nake-v1_1.type = "github";
  inputs.src-nake-v1_1.owner = "fowlmouth";
  inputs.src-nake-v1_1.repo = "nake";
  inputs.src-nake-v1_1.ref = "refs/tags/v1.1";
  
  outputs = { self, nixpkgs, src-nake-v1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nake-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}