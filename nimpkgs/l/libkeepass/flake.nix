{
  description = ''Library for reading KeePass files and decrypt the passwords within it'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libkeepass-master".type = "github";
  inputs."libkeepass-master".owner = "riinr";
  inputs."libkeepass-master".repo = "flake-nimble";
  inputs."libkeepass-master".ref = "flake-pinning";
  inputs."libkeepass-master".dir = "nimpkgs/l/libkeepass/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}