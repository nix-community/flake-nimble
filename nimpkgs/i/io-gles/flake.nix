{
  description = ''Obsolete - please use gles instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."io-gles-master".type = "github";
  inputs."io-gles-master".owner = "riinr";
  inputs."io-gles-master".repo = "flake-nimble";
  inputs."io-gles-master".ref = "flake-pinning";
  inputs."io-gles-master".dir = "nimpkgs/i/io-gles/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}