{
  description = ''Flippy is a simple 2d image and drawing library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-flippy-0_4_4.flake = false;
  inputs.src-flippy-0_4_4.type = "github";
  inputs.src-flippy-0_4_4.owner = "treeform";
  inputs.src-flippy-0_4_4.repo = "flippy";
  inputs.src-flippy-0_4_4.ref = "refs/tags/0.4.4";
  inputs.src-flippy-0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."vmath".type = "github";
  # inputs."vmath".owner = "riinr";
  # inputs."vmath".repo = "flake-nimble";
  # inputs."vmath".ref = "flake-pinning";
  # inputs."vmath".dir = "nimpkgs/v/vmath";
  # inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."print".type = "github";
  # inputs."print".owner = "riinr";
  # inputs."print".repo = "flake-nimble";
  # inputs."print".ref = "flake-pinning";
  # inputs."print".dir = "nimpkgs/p/print";
  # inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimpng".type = "github";
  # inputs."nimpng".owner = "riinr";
  # inputs."nimpng".repo = "flake-nimble";
  # inputs."nimpng".ref = "flake-pinning";
  # inputs."nimpng".dir = "nimpkgs/n/nimpng";
  # inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."snappy".type = "github";
  # inputs."snappy".owner = "riinr";
  # inputs."snappy".repo = "flake-nimble";
  # inputs."snappy".ref = "flake-pinning";
  # inputs."snappy".dir = "nimpkgs/s/snappy";
  # inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-flippy-0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flippy-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flippy-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}