{
  description = ''Youtube data extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ytextractor-master.flake = false;
  inputs.src-ytextractor-master.type = "github";
  inputs.src-ytextractor-master.owner = "thisago";
  inputs.src-ytextractor-master.repo = "ytextractor";
  inputs.src-ytextractor-master.ref = "refs/heads/master";
  inputs.src-ytextractor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ajax".type = "github";
  inputs."ajax".owner = "riinr";
  inputs."ajax".repo = "flake-nimble";
  inputs."ajax".ref = "flake-pinning";
  inputs."ajax".dir = "nimpkgs/a/ajax";
  inputs."ajax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ajax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ytextractor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ytextractor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ytextractor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}