{
  description = ''a down to earth webframework in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."servy-master".type = "github";
  inputs."servy-master".owner = "riinr";
  inputs."servy-master".repo = "flake-nimble";
  inputs."servy-master".ref = "flake-pinning";
  inputs."servy-master".dir = "nimpkgs/s/servy/master";
  inputs."servy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."servy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}