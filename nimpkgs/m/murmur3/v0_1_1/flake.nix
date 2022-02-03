{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs.src-murmur3-v0_1_1.flake = false;
  inputs.src-murmur3-v0_1_1.type = "github";
  inputs.src-murmur3-v0_1_1.owner = "boydgreenfield";
  inputs.src-murmur3-v0_1_1.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-murmur3-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur3-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}