{
  description = ''Simple screenshot library & cli tool made in Nim'';
  inputs.src-nsu-v0_1_4.flake = false;
  inputs.src-nsu-v0_1_4.type = "github";
  inputs.src-nsu-v0_1_4.owner = "Senketsu";
  inputs.src-nsu-v0_1_4.repo = "nsu";
  inputs.src-nsu-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  
  inputs."oldwinapi".type = "github";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".repo = "flake-nimble";
  inputs."oldwinapi".ref = "flake-pinning";
  inputs."oldwinapi".dir = "nimpkgs/o/oldwinapi";

  
  inputs."png".type = "github";
  inputs."png".owner = "riinr";
  inputs."png".repo = "flake-nimble";
  inputs."png".ref = "flake-pinning";
  inputs."png".dir = "nimpkgs/p/png";

  outputs = { self, nixpkgs, src-nsu-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nsu-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nsu-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}