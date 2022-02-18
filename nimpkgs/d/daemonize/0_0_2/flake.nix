{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-daemonize-0_0_2.flake = false;
  inputs.src-daemonize-0_0_2.type = "github";
  inputs.src-daemonize-0_0_2.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_2.repo = "daemonize.nim";
  inputs.src-daemonize-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-daemonize-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}