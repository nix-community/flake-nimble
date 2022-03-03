{
  description = ''Userspace SCTP bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sctp-master".type = "github";
  inputs."sctp-master".owner = "riinr";
  inputs."sctp-master".repo = "flake-nimble";
  inputs."sctp-master".ref = "flake-pinning";
  inputs."sctp-master".dir = "nimpkgs/s/sctp/master";
  inputs."sctp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sctp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}