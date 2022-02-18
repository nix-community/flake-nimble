{
  description = ''libssh2 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimssh2-v0_1_3.flake = false;
  inputs.src-nimssh2-v0_1_3.type = "github";
  inputs.src-nimssh2-v0_1_3.owner = "genotrance";
  inputs.src-nimssh2-v0_1_3.repo = "nimssh2";
  inputs.src-nimssh2-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimssh2-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimssh2-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimssh2-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}