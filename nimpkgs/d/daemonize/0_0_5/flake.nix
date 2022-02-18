{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-daemonize-0_0_5.flake = false;
  inputs.src-daemonize-0_0_5.type = "github";
  inputs.src-daemonize-0_0_5.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_5.repo = "daemonize.nim";
  inputs.src-daemonize-0_0_5.ref = "refs/tags/0.0.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-daemonize-0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}