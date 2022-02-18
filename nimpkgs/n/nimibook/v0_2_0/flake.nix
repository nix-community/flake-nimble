{
  description = ''A port of mdbook to nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimibook-v0_2_0.flake = false;
  inputs.src-nimibook-v0_2_0.type = "github";
  inputs.src-nimibook-v0_2_0.owner = "pietroppeter";
  inputs.src-nimibook-v0_2_0.repo = "nimibook";
  inputs.src-nimibook-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."nimib".type = "github";
  inputs."nimib".owner = "riinr";
  inputs."nimib".repo = "flake-nimble";
  inputs."nimib".ref = "flake-pinning";
  inputs."nimib".dir = "nimpkgs/n/nimib";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimibook-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimibook-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimibook-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}