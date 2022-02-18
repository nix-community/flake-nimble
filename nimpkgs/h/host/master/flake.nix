{
  description = ''A program to staticlly host files or directories over HTTP'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-host-master.flake = false;
  inputs.src-host-master.type = "github";
  inputs.src-host-master.owner = "RainbowAsteroids";
  inputs.src-host-master.repo = "host";
  inputs.src-host-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-host-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-host-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-host-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}