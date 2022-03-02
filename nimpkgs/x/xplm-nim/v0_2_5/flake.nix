{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-XPLM-Nim-v0_2_5.flake = false;
  inputs.src-XPLM-Nim-v0_2_5.type = "github";
  inputs.src-XPLM-Nim-v0_2_5.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_5.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_5.ref = "refs/tags/v0.2.5";
  inputs.src-XPLM-Nim-v0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-XPLM-Nim-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}