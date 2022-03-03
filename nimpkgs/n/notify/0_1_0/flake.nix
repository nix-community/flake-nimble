{
  description = ''A wrapper to notification libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-notify-0_1_0.flake = false;
  inputs.src-notify-0_1_0.type = "github";
  inputs.src-notify-0_1_0.owner = "xbello";
  inputs.src-notify-0_1_0.repo = "notify-nim";
  inputs.src-notify-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-notify-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notify-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notify-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}