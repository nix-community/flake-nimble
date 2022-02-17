{
  description = ''libxslxwriter wrapper for Nim'';
  inputs.src-nimlibxlsxwriter-v0_1_1.flake = false;
  inputs.src-nimlibxlsxwriter-v0_1_1.type = "github";
  inputs.src-nimlibxlsxwriter-v0_1_1.owner = "ThomasTJdev";
  inputs.src-nimlibxlsxwriter-v0_1_1.repo = "nimlibxlsxwriter";
  inputs.src-nimlibxlsxwriter-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimlibxlsxwriter-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlibxlsxwriter-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlibxlsxwriter-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}