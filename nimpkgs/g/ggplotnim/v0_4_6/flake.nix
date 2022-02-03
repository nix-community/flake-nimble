{
  description = ''A port of ggplot2 for Nim'';
  inputs.src-ggplotnim-v0_4_6.flake = false;
  inputs.src-ggplotnim-v0_4_6.type = "github";
  inputs.src-ggplotnim-v0_4_6.owner = "Vindaar";
  inputs.src-ggplotnim-v0_4_6.repo = "ggplotnim";
  inputs.src-ggplotnim-v0_4_6.ref = "refs/tags/v0.4.6";
  
  
  inputs."https://github.com/vindaar/seqmath".url = "path:../../../h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."ginger".url = "path:../../../g/ginger";
  inputs."ginger".type = "github";
  inputs."ginger".owner = "riinr";
  inputs."ginger".repo = "flake-nimble";
  inputs."ginger".ref = "flake-pinning";
  inputs."ginger".dir = "nimpkgs/g/ginger";

  
  inputs."datamancer".url = "path:../../../d/datamancer";
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";

  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."webview".url = "path:../../../w/webview";
  inputs."webview".type = "github";
  inputs."webview".owner = "riinr";
  inputs."webview".repo = "flake-nimble";
  inputs."webview".ref = "flake-pinning";
  inputs."webview".dir = "nimpkgs/w/webview";

  
  inputs."https://github.com/scinim/scinim".url = "path:../../../h/https://github.com/scinim/scinim";
  inputs."https://github.com/scinim/scinim".type = "github";
  inputs."https://github.com/scinim/scinim".owner = "riinr";
  inputs."https://github.com/scinim/scinim".repo = "flake-nimble";
  inputs."https://github.com/scinim/scinim".ref = "flake-pinning";
  inputs."https://github.com/scinim/scinim".dir = "nimpkgs/h/https://github.com/scinim/scinim";

  outputs = { self, nixpkgs, src-ggplotnim-v0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ggplotnim-v0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ggplotnim-v0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}