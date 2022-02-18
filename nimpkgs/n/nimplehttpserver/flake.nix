{
  description = ''SimpleHTTPServer module based on net sockets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."NimpleHTTPServer-master".type = "github";
  inputs."NimpleHTTPServer-master".owner = "riinr";
  inputs."NimpleHTTPServer-master".repo = "flake-nimble";
  inputs."NimpleHTTPServer-master".ref = "flake-pinning";
  inputs."NimpleHTTPServer-master".dir = "nimpkgs/n/NimpleHTTPServer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}