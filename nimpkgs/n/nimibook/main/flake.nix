{
  description = ''A port of mdbook to nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimibook-main.flake = false;
  inputs.src-nimibook-main.type = "github";
  inputs.src-nimibook-main.owner = "pietroppeter";
  inputs.src-nimibook-main.repo = "nimibook";
  inputs.src-nimibook-main.ref = "refs/heads/main";
  inputs.src-nimibook-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimib".type = "github";
  inputs."nimib".owner = "riinr";
  inputs."nimib".repo = "flake-nimble";
  inputs."nimib".ref = "flake-pinning";
  inputs."nimib".dir = "nimpkgs/n/nimib";
  inputs."nimib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimibook-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimibook-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimibook-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}