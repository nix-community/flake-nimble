{
  description = ''libxslxwriter wrapper for Nim'';
  inputs.src-nimlibxlsxwriter-v0_1_3.flake = false;
  inputs.src-nimlibxlsxwriter-v0_1_3.type = "github";
  inputs.src-nimlibxlsxwriter-v0_1_3.owner = "ThomasTJdev";
  inputs.src-nimlibxlsxwriter-v0_1_3.repo = "nimlibxlsxwriter";
  inputs.src-nimlibxlsxwriter-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  outputs = { self, nixpkgs, src-nimlibxlsxwriter-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlibxlsxwriter-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlibxlsxwriter-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}