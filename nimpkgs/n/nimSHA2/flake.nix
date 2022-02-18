{
  description = ''Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimSHA2-master".type = "github";
  inputs."nimSHA2-master".owner = "riinr";
  inputs."nimSHA2-master".repo = "flake-nimble";
  inputs."nimSHA2-master".ref = "flake-pinning";
  inputs."nimSHA2-master".dir = "nimpkgs/n/nimSHA2/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}