{
  description = ''wit.ai client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."witai-master".type = "github";
  inputs."witai-master".owner = "riinr";
  inputs."witai-master".repo = "flake-nimble";
  inputs."witai-master".ref = "flake-pinning";
  inputs."witai-master".dir = "nimpkgs/w/witai/master";
  inputs."witai-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."witai-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}