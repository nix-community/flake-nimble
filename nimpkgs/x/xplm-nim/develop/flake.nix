{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-XPLM-Nim-develop.flake = false;
  inputs.src-XPLM-Nim-develop.type = "github";
  inputs.src-XPLM-Nim-develop.owner = "jpoirier";
  inputs.src-XPLM-Nim-develop.repo = "XPLM-Nim";
  inputs.src-XPLM-Nim-develop.ref = "refs/heads/develop";
  inputs.src-XPLM-Nim-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-XPLM-Nim-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-XPLM-Nim-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}