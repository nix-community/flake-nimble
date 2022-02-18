{
  description = ''A file system monitor in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fsnotify-master.flake = false;
  inputs.src-fsnotify-master.type = "github";
  inputs.src-fsnotify-master.owner = "xflywind";
  inputs.src-fsnotify-master.repo = "fsnotify";
  inputs.src-fsnotify-master.ref = "refs/heads/master";
  
  
  inputs."timerwheel".type = "github";
  inputs."timerwheel".owner = "riinr";
  inputs."timerwheel".repo = "flake-nimble";
  inputs."timerwheel".ref = "flake-pinning";
  inputs."timerwheel".dir = "nimpkgs/t/timerwheel";

  
  inputs."xio".type = "github";
  inputs."xio".owner = "riinr";
  inputs."xio".repo = "flake-nimble";
  inputs."xio".ref = "flake-pinning";
  inputs."xio".dir = "nimpkgs/x/xio";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fsnotify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fsnotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fsnotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}