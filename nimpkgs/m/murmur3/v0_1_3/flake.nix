{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs.src-murmur3-v0_1_3.flake = false;
  inputs.src-murmur3-v0_1_3.type = "github";
  inputs.src-murmur3-v0_1_3.owner = "boydgreenfield";
  inputs.src-murmur3-v0_1_3.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-murmur3-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur3-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}