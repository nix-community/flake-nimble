{
  description = ''A port of ggplot2 for Nim'';
  inputs.src-ggplotnim-v0_1_3.flake = false;
  inputs.src-ggplotnim-v0_1_3.type = "github";
  inputs.src-ggplotnim-v0_1_3.owner = "Vindaar";
  inputs.src-ggplotnim-v0_1_3.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."https://github.com/vindaar/ginger".type = "github";
  inputs."https://github.com/vindaar/ginger".owner = "riinr";
  inputs."https://github.com/vindaar/ginger".repo = "flake-nimble";
  inputs."https://github.com/vindaar/ginger".ref = "flake-pinning";
  inputs."https://github.com/vindaar/ginger".dir = "nimpkgs/h/https://github.com/vindaar/ginger";

  
  inputs."persvector".type = "github";
  inputs."persvector".owner = "riinr";
  inputs."persvector".repo = "flake-nimble";
  inputs."persvector".ref = "flake-pinning";
  inputs."persvector".dir = "nimpkgs/p/persvector";

  outputs = { self, nixpkgs, src-ggplotnim-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ggplotnim-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}