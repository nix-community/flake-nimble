{
  description = ''Flippy is a simple 2d image and drawing library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-flippy-0_4_7.flake = false;
  inputs.src-flippy-0_4_7.type = "github";
  inputs.src-flippy-0_4_7.owner = "treeform";
  inputs.src-flippy-0_4_7.repo = "flippy";
  inputs.src-flippy-0_4_7.ref = "refs/tags/0.4.7";
  inputs.src-flippy-0_4_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."nimpng".type = "github";
  # inputs."nimpng".owner = "riinr";
  # inputs."nimpng".repo = "flake-nimble";
  # inputs."nimpng".ref = "flake-pinning";
  # inputs."nimpng".dir = "nimpkgs/n/nimpng";
  # inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."supersnappy".type = "github";
  # inputs."supersnappy".owner = "riinr";
  # inputs."supersnappy".repo = "flake-nimble";
  # inputs."supersnappy".ref = "flake-pinning";
  # inputs."supersnappy".dir = "nimpkgs/s/supersnappy";
  # inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-flippy-0_4_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flippy-0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flippy-0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}