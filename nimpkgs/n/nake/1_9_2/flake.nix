{
  description = ''make-like for Nim. Describe your builds as tasks!'';
  inputs.src-nake-1_9_2.flake = false;
  inputs.src-nake-1_9_2.type = "github";
  inputs.src-nake-1_9_2.owner = "fowlmouth";
  inputs.src-nake-1_9_2.repo = "nake";
  inputs.src-nake-1_9_2.ref = "refs/tags/1.9.2";
  
  outputs = { self, nixpkgs, src-nake-1_9_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nake-1_9_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nake-1_9_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}