{
  description = ''A wrapper to notification libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-notify-0_1_4.flake = false;
  inputs.src-notify-0_1_4.type = "github";
  inputs.src-notify-0_1_4.owner = "xbello";
  inputs.src-notify-0_1_4.repo = "notify-nim";
  inputs.src-notify-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-notify-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-notify-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-notify-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-notify-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}