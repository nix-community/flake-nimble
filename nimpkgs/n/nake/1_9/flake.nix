{
  description = ''make-like for Nim. Describe your builds as tasks!'';
  inputs.src-nake-1_9.flake = false;
  inputs.src-nake-1_9.type = "github";
  inputs.src-nake-1_9.owner = "fowlmouth";
  inputs.src-nake-1_9.repo = "nake";
  inputs.src-nake-1_9.ref = "refs/tags/1.9";
  
  outputs = { self, nixpkgs, src-nake-1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nake-1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}