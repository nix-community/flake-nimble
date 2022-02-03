{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs.src-murmur3-v0_1_0.flake = false;
  inputs.src-murmur3-v0_1_0.type = "github";
  inputs.src-murmur3-v0_1_0.owner = "boydgreenfield";
  inputs.src-murmur3-v0_1_0.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-murmur3-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur3-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}