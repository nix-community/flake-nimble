{
  description = ''Systemd service notification helper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sdnotify-master".type = "github";
  inputs."sdnotify-master".owner = "riinr";
  inputs."sdnotify-master".repo = "flake-nimble";
  inputs."sdnotify-master".ref = "flake-pinning";
  inputs."sdnotify-master".dir = "nimpkgs/s/sdnotify/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}