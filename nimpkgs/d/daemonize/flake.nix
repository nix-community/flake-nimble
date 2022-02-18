{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."daemonize-master".type = "github";
  inputs."daemonize-master".owner = "riinr";
  inputs."daemonize-master".repo = "flake-nimble";
  inputs."daemonize-master".ref = "flake-pinning";
  inputs."daemonize-master".dir = "nimpkgs/d/daemonize/master";

    inputs."daemonize-0_0_1".type = "github";
  inputs."daemonize-0_0_1".owner = "riinr";
  inputs."daemonize-0_0_1".repo = "flake-nimble";
  inputs."daemonize-0_0_1".ref = "flake-pinning";
  inputs."daemonize-0_0_1".dir = "nimpkgs/d/daemonize/0_0_1";

    inputs."daemonize-0_0_2".type = "github";
  inputs."daemonize-0_0_2".owner = "riinr";
  inputs."daemonize-0_0_2".repo = "flake-nimble";
  inputs."daemonize-0_0_2".ref = "flake-pinning";
  inputs."daemonize-0_0_2".dir = "nimpkgs/d/daemonize/0_0_2";

    inputs."daemonize-0_0_3".type = "github";
  inputs."daemonize-0_0_3".owner = "riinr";
  inputs."daemonize-0_0_3".repo = "flake-nimble";
  inputs."daemonize-0_0_3".ref = "flake-pinning";
  inputs."daemonize-0_0_3".dir = "nimpkgs/d/daemonize/0_0_3";

    inputs."daemonize-0_0_5".type = "github";
  inputs."daemonize-0_0_5".owner = "riinr";
  inputs."daemonize-0_0_5".repo = "flake-nimble";
  inputs."daemonize-0_0_5".ref = "flake-pinning";
  inputs."daemonize-0_0_5".dir = "nimpkgs/d/daemonize/0_0_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}