{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rabbit-v0_1_0.flake = false;
  inputs.src-rabbit-v0_1_0.type = "github";
  inputs.src-rabbit-v0_1_0.owner = "tonogram";
  inputs.src-rabbit-v0_1_0.repo = "rabbit";
  inputs.src-rabbit-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-rabbit-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."chroma".type = "github";
  # inputs."chroma".owner = "riinr";
  # inputs."chroma".repo = "flake-nimble";
  # inputs."chroma".ref = "flake-pinning";
  # inputs."chroma".dir = "nimpkgs/c/chroma";
  # inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rabbit-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rabbit-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rabbit-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}