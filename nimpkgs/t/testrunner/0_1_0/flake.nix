{
  description = ''Test runner with file monitoring and desktop notification capabilities'';
  inputs.src-testrunner-0_1_0.flake = false;
  inputs.src-testrunner-0_1_0.type = "github";
  inputs.src-testrunner-0_1_0.owner = "FedericoCeratto";
  inputs.src-testrunner-0_1_0.repo = "nim-testrunner";
  inputs.src-testrunner-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."libnotify".type = "github";
  inputs."libnotify".owner = "riinr";
  inputs."libnotify".repo = "flake-nimble";
  inputs."libnotify".ref = "flake-pinning";
  inputs."libnotify".dir = "nimpkgs/l/libnotify";

  
  inputs."fswatch".type = "github";
  inputs."fswatch".owner = "riinr";
  inputs."fswatch".repo = "flake-nimble";
  inputs."fswatch".ref = "flake-pinning";
  inputs."fswatch".dir = "nimpkgs/f/fswatch";

  outputs = { self, nixpkgs, src-testrunner-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testrunner-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testrunner-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}