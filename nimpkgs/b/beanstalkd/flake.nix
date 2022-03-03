{
  description = ''A beanstalkd work queue client library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."beanstalkd-master".type = "github";
  inputs."beanstalkd-master".owner = "riinr";
  inputs."beanstalkd-master".repo = "flake-nimble";
  inputs."beanstalkd-master".ref = "flake-pinning";
  inputs."beanstalkd-master".dir = "nimpkgs/b/beanstalkd/master";
  inputs."beanstalkd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."beanstalkd-0_1_0".type = "github";
  inputs."beanstalkd-0_1_0".owner = "riinr";
  inputs."beanstalkd-0_1_0".repo = "flake-nimble";
  inputs."beanstalkd-0_1_0".ref = "flake-pinning";
  inputs."beanstalkd-0_1_0".dir = "nimpkgs/b/beanstalkd/0_1_0";
  inputs."beanstalkd-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."beanstalkd-0_2_0".type = "github";
  inputs."beanstalkd-0_2_0".owner = "riinr";
  inputs."beanstalkd-0_2_0".repo = "flake-nimble";
  inputs."beanstalkd-0_2_0".ref = "flake-pinning";
  inputs."beanstalkd-0_2_0".dir = "nimpkgs/b/beanstalkd/0_2_0";
  inputs."beanstalkd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}