{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';
  inputs.src-nimib-v0_1_2.flake = false;
  inputs.src-nimib-v0_1_2.type = "github";
  inputs.src-nimib-v0_1_2.owner = "pietroppeter";
  inputs.src-nimib-v0_1_2.repo = "nimib";
  inputs.src-nimib-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."mustache".type = "github";
  inputs."mustache".owner = "riinr";
  inputs."mustache".repo = "flake-nimble";
  inputs."mustache".ref = "flake-pinning";
  inputs."mustache".dir = "nimpkgs/m/mustache";

  outputs = { self, nixpkgs, src-nimib-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimib-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimib-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}