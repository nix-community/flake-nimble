{
  description = ''Flippy is a simple 2d image and drawing library.'';
  inputs.src-flippy-0_4_6.flake = false;
  inputs.src-flippy-0_4_6.type = "github";
  inputs.src-flippy-0_4_6.owner = "treeform";
  inputs.src-flippy-0_4_6.repo = "flippy";
  inputs.src-flippy-0_4_6.ref = "refs/tags/0.4.6";
  
  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  outputs = { self, nixpkgs, src-flippy-0_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flippy-0_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flippy-0_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}