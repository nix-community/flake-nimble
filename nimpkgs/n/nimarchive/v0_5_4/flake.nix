{
  description = ''libarchive wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimarchive-v0_5_4.flake = false;
  inputs.src-nimarchive-v0_5_4.type = "github";
  inputs.src-nimarchive-v0_5_4.owner = "genotrance";
  inputs.src-nimarchive-v0_5_4.repo = "nimarchive";
  inputs.src-nimarchive-v0_5_4.ref = "refs/tags/v0.5.4";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimarchive-v0_5_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimarchive-v0_5_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimarchive-v0_5_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}