{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';
  inputs.src-nimib-v0_1_6.flake = false;
  inputs.src-nimib-v0_1_6.type = "github";
  inputs.src-nimib-v0_1_6.owner = "pietroppeter";
  inputs.src-nimib-v0_1_6.repo = "nimib";
  inputs.src-nimib-v0_1_6.ref = "refs/tags/v0.1.6";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."markdown".url = "path:../../../m/markdown";
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."mustache".url = "path:../../../m/mustache";
  inputs."mustache".type = "github";
  inputs."mustache".owner = "riinr";
  inputs."mustache".repo = "flake-nimble";
  inputs."mustache".ref = "flake-pinning";
  inputs."mustache".dir = "nimpkgs/m/mustache";

  outputs = { self, nixpkgs, src-nimib-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimib-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimib-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}