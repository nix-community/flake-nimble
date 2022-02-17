{
  description = ''libarchive wrapper for Nim'';
  inputs.src-nimarchive-v0_3_6.flake = false;
  inputs.src-nimarchive-v0_3_6.type = "github";
  inputs.src-nimarchive-v0_3_6.owner = "genotrance";
  inputs.src-nimarchive-v0_3_6.repo = "nimarchive";
  inputs.src-nimarchive-v0_3_6.ref = "refs/tags/v0.3.6";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimarchive-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarchive-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimarchive-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}