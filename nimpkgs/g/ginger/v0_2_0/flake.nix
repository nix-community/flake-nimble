{
  description = ''A Grid (R) like package in Nim'';
  inputs.src-ginger-v0_2_0.flake = false;
  inputs.src-ginger-v0_2_0.type = "github";
  inputs.src-ginger-v0_2_0.owner = "Vindaar";
  inputs.src-ginger-v0_2_0.repo = "ginger";
  inputs.src-ginger-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
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

  outputs = { self, nixpkgs, src-ginger-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ginger-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ginger-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}