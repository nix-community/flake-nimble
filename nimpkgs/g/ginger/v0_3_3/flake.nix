{
  description = ''A Grid (R) like package in Nim'';
  inputs.src-ginger-v0_3_3.flake = false;
  inputs.src-ginger-v0_3_3.type = "github";
  inputs.src-ginger-v0_3_3.owner = "Vindaar";
  inputs.src-ginger-v0_3_3.repo = "ginger";
  inputs.src-ginger-v0_3_3.ref = "refs/tags/v0.3.3";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."https://github.com/vindaar/seqmath".url = "path:../../../h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."cairo".url = "path:../../../c/cairo";
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  
  inputs."https://github.com/vindaar/latexdsl".url = "path:../../../h/https://github.com/vindaar/latexdsl";
  inputs."https://github.com/vindaar/latexdsl".type = "github";
  inputs."https://github.com/vindaar/latexdsl".owner = "riinr";
  inputs."https://github.com/vindaar/latexdsl".repo = "flake-nimble";
  inputs."https://github.com/vindaar/latexdsl".ref = "flake-pinning";
  inputs."https://github.com/vindaar/latexdsl".dir = "nimpkgs/h/https://github.com/vindaar/latexdsl";

  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  outputs = { self, nixpkgs, src-ginger-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ginger-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ginger-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}