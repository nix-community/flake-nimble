{
  description = ''libsvm wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libsvm-v0_2_0.flake = false;
  inputs.src-libsvm-v0_2_0.type = "github";
  inputs.src-libsvm-v0_2_0.owner = "genotrance";
  inputs.src-libsvm-v0_2_0.repo = "libsvm";
  inputs.src-libsvm-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-libsvm-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libsvm-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsvm-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libsvm-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}