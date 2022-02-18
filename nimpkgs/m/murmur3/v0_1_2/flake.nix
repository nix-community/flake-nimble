{
  description = ''A simple MurmurHash3 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-murmur3-v0_1_2.flake = false;
  inputs.src-murmur3-v0_1_2.type = "github";
  inputs.src-murmur3-v0_1_2.owner = "boydgreenfield";
  inputs.src-murmur3-v0_1_2.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-murmur3-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-murmur3-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}