{
  description = ''Sparsets for Nim'';
  inputs.src-sparseset-v0_3_1.flake = false;
  inputs.src-sparseset-v0_3_1.type = "github";
  inputs.src-sparseset-v0_3_1.owner = "planetis-m";
  inputs.src-sparseset-v0_3_1.repo = "sparseset";
  inputs.src-sparseset-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-sparseset-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparseset-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sparseset-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}