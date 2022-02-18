{
  description = ''Executes a program as a user different from the user running `sue`. The target program is `exec`'ed which means, that it replaces the `sue` process you are using to run the target program. This simulates native tools like `su` and `sudo` and uses the same low-level POSIX tools to achieve that, but eliminates common issues that usually arise, when using those native tools.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sue-master.flake = false;
  inputs.src-sue-master.type = "github";
  inputs.src-sue-master.owner = "theAkito";
  inputs.src-sue-master.repo = "sue";
  inputs.src-sue-master.ref = "refs/heads/master";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sue-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}