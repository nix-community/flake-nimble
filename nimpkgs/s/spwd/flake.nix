{
  description = ''Nim port of Python's spwd module for working with the UNIX shadow password file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spwd-master".type = "github";
  inputs."spwd-master".owner = "riinr";
  inputs."spwd-master".repo = "flake-nimble";
  inputs."spwd-master".ref = "flake-pinning";
  inputs."spwd-master".dir = "nimpkgs/s/spwd/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}