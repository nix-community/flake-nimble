{
  description = ''Socks5 client and server library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."socks-master".type = "github";
  inputs."socks-master".owner = "riinr";
  inputs."socks-master".repo = "flake-nimble";
  inputs."socks-master".ref = "flake-pinning";
  inputs."socks-master".dir = "nimpkgs/s/socks/master";
  inputs."socks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."socks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}