{
  description = ''Simple reallocating vector'';
  inputs.src-vector-v0_1_0.flake = false;
  inputs.src-vector-v0_1_0.type = "github";
  inputs.src-vector-v0_1_0.owner = "tontinton";
  inputs.src-vector-v0_1_0.repo = "vector";
  inputs.src-vector-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-vector-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vector-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vector-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}