{
  description = ''Selectors extension.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ioselectors-master.flake = false;
  inputs.src-ioselectors-master.type = "github";
  inputs.src-ioselectors-master.owner = "xflywind";
  inputs.src-ioselectors-master.repo = "ioselectors";
  inputs.src-ioselectors-master.ref = "refs/heads/master";
  inputs.src-ioselectors-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."wepoll".type = "github";
  inputs."wepoll".owner = "riinr";
  inputs."wepoll".repo = "flake-nimble";
  inputs."wepoll".ref = "flake-pinning";
  inputs."wepoll".dir = "nimpkgs/w/wepoll";
  inputs."wepoll".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ioselectors-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ioselectors-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}