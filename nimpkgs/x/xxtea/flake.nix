{
  description = ''XXTEA encryption algorithm library written in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."xxtea-master".type = "github";
  inputs."xxtea-master".owner = "riinr";
  inputs."xxtea-master".repo = "flake-nimble";
  inputs."xxtea-master".ref = "flake-pinning";
  inputs."xxtea-master".dir = "nimpkgs/x/xxtea/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}