{
  description = ''Wrapper for the nanomsg socket library that provides several common communication patterns'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nanomsg-master.flake = false;
  inputs.src-nanomsg-master.type = "github";
  inputs.src-nanomsg-master.owner = "def-";
  inputs.src-nanomsg-master.repo = "nim-nanomsg";
  inputs.src-nanomsg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nanomsg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanomsg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nanomsg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}