{
  description = ''Library for working with a slack app or sending messages to a slack channel (slack.com)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."slacklib-master".type = "github";
  inputs."slacklib-master".owner = "riinr";
  inputs."slacklib-master".repo = "flake-nimble";
  inputs."slacklib-master".ref = "flake-pinning";
  inputs."slacklib-master".dir = "nimpkgs/s/slacklib/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}