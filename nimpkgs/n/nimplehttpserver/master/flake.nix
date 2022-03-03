{
  description = ''SimpleHTTPServer module based on net sockets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-NimpleHTTPServer-master.flake = false;
  inputs.src-NimpleHTTPServer-master.type = "github";
  inputs.src-NimpleHTTPServer-master.owner = "Hydra820";
  inputs.src-NimpleHTTPServer-master.repo = "NimpleHTTPServer";
  inputs.src-NimpleHTTPServer-master.ref = "refs/heads/master";
  inputs.src-NimpleHTTPServer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-NimpleHTTPServer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimpleHTTPServer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-NimpleHTTPServer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}