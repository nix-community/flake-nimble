{
  description = ''Sparsets for Nim'';
  inputs.src-sparseset-v0_3_2.flake = false;
  inputs.src-sparseset-v0_3_2.type = "github";
  inputs.src-sparseset-v0_3_2.owner = "planetis-m";
  inputs.src-sparseset-v0_3_2.repo = "sparseset";
  inputs.src-sparseset-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-sparseset-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparseset-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sparseset-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}