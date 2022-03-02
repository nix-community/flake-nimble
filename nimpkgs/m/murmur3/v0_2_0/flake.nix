{
  description = ''A simple MurmurHash3 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-murmur3-v0_2_0.flake = false;
  inputs.src-murmur3-v0_2_0.type = "github";
  inputs.src-murmur3-v0_2_0.owner = "boydgreenfield";
  inputs.src-murmur3-v0_2_0.repo = "nimrod-murmur";
  inputs.src-murmur3-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-murmur3-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-murmur3-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmur3-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-murmur3-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}