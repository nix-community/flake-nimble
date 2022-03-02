{
  description = ''Chart plugin for wNim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-wChart-master.flake = false;
  inputs.src-wChart-master.type = "github";
  inputs.src-wChart-master.owner = "bunkford";
  inputs.src-wChart-master.repo = "wChart";
  inputs.src-wChart-master.ref = "refs/heads/master";
  inputs.src-wChart-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."wnim".type = "github";
  # inputs."wnim".owner = "riinr";
  # inputs."wnim".repo = "flake-nimble";
  # inputs."wnim".ref = "flake-pinning";
  # inputs."wnim".dir = "nimpkgs/w/wnim";
  # inputs."wnim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."wnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wChart-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wChart-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wChart-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}