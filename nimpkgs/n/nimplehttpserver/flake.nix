{
  description = ''SimpleHTTPServer module based on net sockets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimplehttpserver-master".type = "github";
  inputs."nimplehttpserver-master".owner = "riinr";
  inputs."nimplehttpserver-master".repo = "flake-nimble";
  inputs."nimplehttpserver-master".ref = "flake-pinning";
  inputs."nimplehttpserver-master".dir = "nimpkgs/n/nimplehttpserver/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
