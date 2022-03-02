{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-daemonize-master.flake = false;
  inputs.src-daemonize-master.type = "github";
  inputs.src-daemonize-master.owner = "OpenSystemsLab";
  inputs.src-daemonize-master.repo = "daemonize.nim";
  inputs.src-daemonize-master.ref = "refs/heads/master";
  inputs.src-daemonize-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-daemonize-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}