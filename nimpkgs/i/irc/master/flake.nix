{
  description = ''Implements a simple IRC client.'';
  inputs.src-irc-master.flake = false;
  inputs.src-irc-master.type = "github";
  inputs.src-irc-master.owner = "nim-lang";
  inputs.src-irc-master.repo = "irc";
  inputs.src-irc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-irc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-irc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-irc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}