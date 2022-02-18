{
  description = ''Wrapper for the Snappy-C compression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimsnappyc-master".type = "github";
  inputs."nimsnappyc-master".owner = "riinr";
  inputs."nimsnappyc-master".repo = "flake-nimble";
  inputs."nimsnappyc-master".ref = "flake-pinning";
  inputs."nimsnappyc-master".dir = "nimpkgs/n/nimsnappyc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}