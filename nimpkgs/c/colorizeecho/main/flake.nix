{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-colorizeEcho-main.flake = false;
  inputs.src-colorizeEcho-main.type = "github";
  inputs.src-colorizeEcho-main.owner = "s3pt3mb3r";
  inputs.src-colorizeEcho-main.repo = "colorizeEcho";
  inputs.src-colorizeEcho-main.ref = "refs/heads/main";
  inputs.src-colorizeEcho-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorizeEcho-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorizeEcho-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorizeEcho-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}