{
  description = ''A simple MurmurHash3 wrapper for Nim'';
  inputs.src-murmur3-v0_1_2.flake = false;
  inputs.src-murmur3-v0_1_2.type = "github";
  inputs.src-murmur3-v0_1_2.owner = "boydgreenfield";
  inputs.src-murmur3-v0_1_2.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-murmur3-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmur3-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}