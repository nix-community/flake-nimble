{
  description = ''Implements a simple IRC client.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-irc-master.flake = false;
  inputs.src-irc-master.type = "github";
  inputs.src-irc-master.owner = "nim-lang";
  inputs.src-irc-master.repo = "irc";
  inputs.src-irc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-irc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-irc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-irc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}