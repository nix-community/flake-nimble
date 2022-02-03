{
  description = ''Test runner with file monitoring and desktop notification capabilities'';
  inputs.src-testrunner-master.flake = false;
  inputs.src-testrunner-master.type = "github";
  inputs.src-testrunner-master.owner = "FedericoCeratto";
  inputs.src-testrunner-master.repo = "nim-testrunner";
  inputs.src-testrunner-master.ref = "refs/heads/master";
  
  
  inputs."libnotify".url = "path:../../../l/libnotify";
  inputs."libnotify".type = "github";
  inputs."libnotify".owner = "riinr";
  inputs."libnotify".repo = "flake-nimble";
  inputs."libnotify".ref = "flake-pinning";
  inputs."libnotify".dir = "nimpkgs/l/libnotify";

  
  inputs."fswatch".url = "path:../../../f/fswatch";
  inputs."fswatch".type = "github";
  inputs."fswatch".owner = "riinr";
  inputs."fswatch".repo = "flake-nimble";
  inputs."fswatch".ref = "flake-pinning";
  inputs."fswatch".dir = "nimpkgs/f/fswatch";

  outputs = { self, nixpkgs, src-testrunner-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testrunner-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testrunner-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}