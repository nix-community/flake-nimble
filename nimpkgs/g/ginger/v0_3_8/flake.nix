{
  description = ''A Grid (R) like package in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ginger-v0_3_8.flake = false;
  inputs.src-ginger-v0_3_8.type = "github";
  inputs.src-ginger-v0_3_8.owner = "Vindaar";
  inputs.src-ginger-v0_3_8.repo = "ginger";
  inputs.src-ginger-v0_3_8.ref = "refs/tags/v0.3.8";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  
  inputs."https://github.com/vindaar/latexdsl".type = "github";
  inputs."https://github.com/vindaar/latexdsl".owner = "riinr";
  inputs."https://github.com/vindaar/latexdsl".repo = "flake-nimble";
  inputs."https://github.com/vindaar/latexdsl".ref = "flake-pinning";
  inputs."https://github.com/vindaar/latexdsl".dir = "nimpkgs/h/https://github.com/vindaar/latexdsl";

  
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ginger-v0_3_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ginger-v0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ginger-v0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}