{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."smbexec-master".type = "github";
  inputs."smbexec-master".owner = "riinr";
  inputs."smbexec-master".repo = "flake-nimble";
  inputs."smbexec-master".ref = "flake-pinning";
  inputs."smbexec-master".dir = "nimpkgs/s/smbexec/master";
  inputs."smbexec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smbexec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}