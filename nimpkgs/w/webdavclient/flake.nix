{
  description = ''WebDAV Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webdavclient-master".type = "github";
  inputs."webdavclient-master".owner = "riinr";
  inputs."webdavclient-master".repo = "flake-nimble";
  inputs."webdavclient-master".ref = "flake-pinning";
  inputs."webdavclient-master".dir = "nimpkgs/w/webdavclient/master";
  inputs."webdavclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webdavclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."webdavclient-0_1_0".type = "github";
  inputs."webdavclient-0_1_0".owner = "riinr";
  inputs."webdavclient-0_1_0".repo = "flake-nimble";
  inputs."webdavclient-0_1_0".ref = "flake-pinning";
  inputs."webdavclient-0_1_0".dir = "nimpkgs/w/webdavclient/0_1_0";
  inputs."webdavclient-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webdavclient-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}