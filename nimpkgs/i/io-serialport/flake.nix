{
  description = ''Obsolete - please use serialport instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."io-serialport-master".type = "github";
  inputs."io-serialport-master".owner = "riinr";
  inputs."io-serialport-master".repo = "flake-nimble";
  inputs."io-serialport-master".ref = "flake-pinning";
  inputs."io-serialport-master".dir = "nimpkgs/i/io-serialport/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}