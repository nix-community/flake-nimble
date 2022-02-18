{
  description = ''SimpleHTTPServer module based on net sockets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimplehttpserver-master.flake = false;
  inputs.src-nimplehttpserver-master.type = "github";
  inputs.src-nimplehttpserver-master.owner = "Hydra820";
  inputs.src-nimplehttpserver-master.repo = "NimpleHTTPServer";
  inputs.src-nimplehttpserver-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimplehttpserver-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimplehttpserver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimplehttpserver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}