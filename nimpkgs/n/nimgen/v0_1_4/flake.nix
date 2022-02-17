{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';
  inputs.src-nimgen-v0_1_4.flake = false;
  inputs.src-nimgen-v0_1_4.type = "github";
  inputs.src-nimgen-v0_1_4.owner = "genotrance";
  inputs.src-nimgen-v0_1_4.repo = "nimgen";
  inputs.src-nimgen-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  outputs = { self, nixpkgs, src-nimgen-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgen-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgen-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}