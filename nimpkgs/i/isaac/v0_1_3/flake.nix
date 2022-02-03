{
  description = ''ISAAC PRNG implementation on Nim'';
  inputs.src-isaac-v0_1_3.flake = false;
  inputs.src-isaac-v0_1_3.type = "github";
  inputs.src-isaac-v0_1_3.owner = "pragmagic";
  inputs.src-isaac-v0_1_3.repo = "isaac";
  inputs.src-isaac-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-isaac-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isaac-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isaac-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}