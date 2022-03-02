{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-runeterra_decks-v0_5_0.flake = false;
  inputs.src-runeterra_decks-v0_5_0.type = "github";
  inputs.src-runeterra_decks-v0_5_0.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_5_0.repo = "runeterra_decks";
  inputs.src-runeterra_decks-v0_5_0.ref = "refs/tags/v0.5.0";
  inputs.src-runeterra_decks-v0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."base32".type = "github";
  # inputs."base32".owner = "riinr";
  # inputs."base32".repo = "flake-nimble";
  # inputs."base32".ref = "flake-pinning";
  # inputs."base32".dir = "nimpkgs/b/base32";
  # inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-runeterra_decks-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-runeterra_decks-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-runeterra_decks-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}