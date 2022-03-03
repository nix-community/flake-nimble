{
  description = ''A port of mdbook to nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimibook-v0_2_1.flake = false;
  inputs.src-nimibook-v0_2_1.type = "github";
  inputs.src-nimibook-v0_2_1.owner = "pietroppeter";
  inputs.src-nimibook-v0_2_1.repo = "nimibook";
  inputs.src-nimibook-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-nimibook-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimib".type = "github";
  # inputs."nimib".owner = "riinr";
  # inputs."nimib".repo = "flake-nimble";
  # inputs."nimib".ref = "flake-pinning";
  # inputs."nimib".dir = "nimpkgs/n/nimib";
  # inputs."nimib".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."jsony".type = "github";
  # inputs."jsony".owner = "riinr";
  # inputs."jsony".repo = "flake-nimble";
  # inputs."jsony".ref = "flake-pinning";
  # inputs."jsony".dir = "nimpkgs/j/jsony";
  # inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimibook-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimibook-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimibook-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}