{
  description = ''Steganography - hide data inside an image.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."steganography-master".type = "github";
  inputs."steganography-master".owner = "riinr";
  inputs."steganography-master".repo = "flake-nimble";
  inputs."steganography-master".ref = "flake-pinning";
  inputs."steganography-master".dir = "nimpkgs/s/steganography/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}