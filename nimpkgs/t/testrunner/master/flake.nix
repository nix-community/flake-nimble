{
  description = ''Test runner with file monitoring and desktop notification capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-testrunner-master.flake = false;
  inputs.src-testrunner-master.type = "github";
  inputs.src-testrunner-master.owner = "FedericoCeratto";
  inputs.src-testrunner-master.repo = "nim-testrunner";
  inputs.src-testrunner-master.ref = "refs/heads/master";
  inputs.src-testrunner-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."libnotify".type = "github";
  inputs."libnotify".owner = "riinr";
  inputs."libnotify".repo = "flake-nimble";
  inputs."libnotify".ref = "flake-pinning";
  inputs."libnotify".dir = "nimpkgs/l/libnotify";
  inputs."libnotify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnotify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."fswatch".type = "github";
  inputs."fswatch".owner = "riinr";
  inputs."fswatch".repo = "flake-nimble";
  inputs."fswatch".ref = "flake-pinning";
  inputs."fswatch".dir = "nimpkgs/f/fswatch";
  inputs."fswatch".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-testrunner-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testrunner-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testrunner-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}