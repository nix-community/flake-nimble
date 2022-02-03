{
  description = ''WinKerberos wrapper for Nim'';
  inputs.src-nimkerberos-v0_1_0.flake = false;
  inputs.src-nimkerberos-v0_1_0.type = "github";
  inputs.src-nimkerberos-v0_1_0.owner = "genotrance";
  inputs.src-nimkerberos-v0_1_0.repo = "nimkerberos";
  inputs.src-nimkerberos-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimkerberos-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkerberos-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimkerberos-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}