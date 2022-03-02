{
  description = ''Syslog module.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."syslog-master".type = "github";
  inputs."syslog-master".owner = "riinr";
  inputs."syslog-master".repo = "flake-nimble";
  inputs."syslog-master".ref = "flake-pinning";
  inputs."syslog-master".dir = "nimpkgs/s/syslog/master";
  inputs."syslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."syslog-0_0_3".type = "github";
  inputs."syslog-0_0_3".owner = "riinr";
  inputs."syslog-0_0_3".repo = "flake-nimble";
  inputs."syslog-0_0_3".ref = "flake-pinning";
  inputs."syslog-0_0_3".dir = "nimpkgs/s/syslog/0_0_3";
  inputs."syslog-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."syslog-0_0_5".type = "github";
  inputs."syslog-0_0_5".owner = "riinr";
  inputs."syslog-0_0_5".repo = "flake-nimble";
  inputs."syslog-0_0_5".ref = "flake-pinning";
  inputs."syslog-0_0_5".dir = "nimpkgs/s/syslog/0_0_5";
  inputs."syslog-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}