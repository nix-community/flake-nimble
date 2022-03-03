{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-XPLM-Nim-v0_2_3.flake = false;
  inputs.src-XPLM-Nim-v0_2_3.type = "github";
  inputs.src-XPLM-Nim-v0_2_3.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_3.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-XPLM-Nim-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-XPLM-Nim-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}