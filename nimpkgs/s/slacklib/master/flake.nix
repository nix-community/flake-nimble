{
  description = ''Library for working with a slack app or sending messages to a slack channel (slack.com)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-slacklib-master.flake = false;
  inputs.src-slacklib-master.type = "github";
  inputs.src-slacklib-master.owner = "ThomasTJdev";
  inputs.src-slacklib-master.repo = "nim_slacklib";
  inputs.src-slacklib-master.ref = "refs/heads/master";
  inputs.src-slacklib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-slacklib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slacklib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slacklib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}