{
  description = ''Syllable estimation for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-syllables-v1_0_0.flake = false;
  inputs.src-syllables-v1_0_0.type = "github";
  inputs.src-syllables-v1_0_0.owner = "tonogram";
  inputs.src-syllables-v1_0_0.repo = "nim-syllables";
  inputs.src-syllables-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-syllables-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/testes".type = "github";
  # inputs."https://github.com/disruptek/testes".owner = "riinr";
  # inputs."https://github.com/disruptek/testes".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/testes".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/testes".dir = "nimpkgs/h/https://github.com/disruptek/testes";
  # inputs."https://github.com/disruptek/testes".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/testes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-syllables-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syllables-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syllables-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}