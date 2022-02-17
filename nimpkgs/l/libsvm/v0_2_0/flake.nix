{
  description = ''libsvm wrapper for Nim'';
  inputs.src-libsvm-v0_2_0.flake = false;
  inputs.src-libsvm-v0_2_0.type = "github";
  inputs.src-libsvm-v0_2_0.owner = "genotrance";
  inputs.src-libsvm-v0_2_0.repo = "libsvm";
  inputs.src-libsvm-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-libsvm-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsvm-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsvm-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}