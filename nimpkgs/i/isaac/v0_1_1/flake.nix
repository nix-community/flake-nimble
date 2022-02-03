{
  description = ''ISAAC PRNG implementation on Nim'';
  inputs.src-isaac-v0_1_1.flake = false;
  inputs.src-isaac-v0_1_1.type = "github";
  inputs.src-isaac-v0_1_1.owner = "pragmagic";
  inputs.src-isaac-v0_1_1.repo = "isaac";
  inputs.src-isaac-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-isaac-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isaac-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isaac-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}