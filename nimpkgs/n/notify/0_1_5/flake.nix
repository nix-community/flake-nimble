{
  description = ''A wrapper to notification libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-notify-0_1_5.flake = false;
  inputs.src-notify-0_1_5.type = "github";
  inputs.src-notify-0_1_5.owner = "xbello";
  inputs.src-notify-0_1_5.repo = "notify-nim";
  inputs.src-notify-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-notify-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notify-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notify-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}