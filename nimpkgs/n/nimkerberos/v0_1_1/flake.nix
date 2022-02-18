{
  description = ''WinKerberos wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimkerberos-v0_1_1.flake = false;
  inputs.src-nimkerberos-v0_1_1.type = "github";
  inputs.src-nimkerberos-v0_1_1.owner = "genotrance";
  inputs.src-nimkerberos-v0_1_1.repo = "nimkerberos";
  inputs.src-nimkerberos-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimkerberos-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkerberos-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimkerberos-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}