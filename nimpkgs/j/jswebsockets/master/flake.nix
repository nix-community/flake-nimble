{
  description = ''Websockets wrapper for nim js backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jswebsockets-master.flake = false;
  inputs.src-jswebsockets-master.type = "github";
  inputs.src-jswebsockets-master.owner = "stisa";
  inputs.src-jswebsockets-master.repo = "jswebsockets";
  inputs.src-jswebsockets-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jswebsockets-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jswebsockets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jswebsockets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}