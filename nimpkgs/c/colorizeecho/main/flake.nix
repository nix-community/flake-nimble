{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-colorizeecho-main.flake = false;
  inputs.src-colorizeecho-main.type = "github";
  inputs.src-colorizeecho-main.owner = "s3pt3mb3r";
  inputs.src-colorizeecho-main.repo = "colorizeEcho";
  inputs.src-colorizeecho-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorizeecho-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorizeecho-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorizeecho-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}