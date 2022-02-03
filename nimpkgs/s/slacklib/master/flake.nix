{
  description = ''Library for working with a slack app or sending messages to a slack channel (slack.com)'';
  inputs.src-slacklib-master.flake = false;
  inputs.src-slacklib-master.type = "github";
  inputs.src-slacklib-master.owner = "ThomasTJdev";
  inputs.src-slacklib-master.repo = "nim_slacklib";
  inputs.src-slacklib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-slacklib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slacklib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slacklib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}