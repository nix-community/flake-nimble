{
  description = ''A simple chunked external protocol interface for Splunk custom search commands.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nim_cexc-master".type = "github";
  inputs."nim_cexc-master".owner = "riinr";
  inputs."nim_cexc-master".repo = "flake-nimble";
  inputs."nim_cexc-master".ref = "flake-pinning";
  inputs."nim_cexc-master".dir = "nimpkgs/n/nim_cexc/master";
  inputs."nim_cexc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_cexc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}