{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
  inputs.src-nimgen-v0_4_0.flake = false;
  inputs.src-nimgen-v0_4_0.type = "github";
  inputs.src-nimgen-v0_4_0.owner = "genotrance";
  inputs.src-nimgen-v0_4_0.repo = "nimgen";
  inputs.src-nimgen-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."c2nim".url = "path:../../../c/c2nim";
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-nimgen-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgen-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}