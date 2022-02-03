{
  description = ''A Grid (R) like package in Nim'';
  inputs.src-ginger-v0_1_1.flake = false;
  inputs.src-ginger-v0_1_1.type = "github";
  inputs.src-ginger-v0_1_1.owner = "Vindaar";
  inputs.src-ginger-v0_1_1.repo = "ginger";
  inputs.src-ginger-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
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

  outputs = { self, nixpkgs, src-ginger-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ginger-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ginger-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}