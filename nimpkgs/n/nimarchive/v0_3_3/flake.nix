{
  description = ''libarchive wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimarchive-v0_3_3.flake = false;
  inputs.src-nimarchive-v0_3_3.type = "github";
  inputs.src-nimarchive-v0_3_3.owner = "genotrance";
  inputs.src-nimarchive-v0_3_3.repo = "nimarchive";
  inputs.src-nimarchive-v0_3_3.ref = "refs/tags/v0.3.3";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimarchive-v0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarchive-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimarchive-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}