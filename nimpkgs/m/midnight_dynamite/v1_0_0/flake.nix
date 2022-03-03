{
  description = ''Wrapper for the markdown rendering hoedown library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-midnight_dynamite-v1_0_0.flake = false;
  inputs.src-midnight_dynamite-v1_0_0.type = "github";
  inputs.src-midnight_dynamite-v1_0_0.owner = "Araq";
  inputs.src-midnight_dynamite-v1_0_0.repo = "midnight_dynamite";
  inputs.src-midnight_dynamite-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-midnight_dynamite-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nake".type = "github";
  # inputs."nake".owner = "riinr";
  # inputs."nake".repo = "flake-nimble";
  # inputs."nake".ref = "flake-pinning";
  # inputs."nake".dir = "nimpkgs/n/nake";
  # inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."argument_parser".type = "github";
  # inputs."argument_parser".owner = "riinr";
  # inputs."argument_parser".repo = "flake-nimble";
  # inputs."argument_parser".ref = "flake-pinning";
  # inputs."argument_parser".dir = "nimpkgs/a/argument_parser";
  # inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/gradha/badger_bits.git".type = "github";
  # inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  # inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  # inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  # inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";
  # inputs."https://github.com/gradha/badger_bits.git".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/gradha/badger_bits.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-midnight_dynamite-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-midnight_dynamite-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-midnight_dynamite-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}