{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xplm-nim-v0_2_3.flake = false;
  inputs.src-xplm-nim-v0_2_3.type = "github";
  inputs.src-xplm-nim-v0_2_3.owner = "jpoirier";
  inputs.src-xplm-nim-v0_2_3.repo = "xplm-Nim";
  inputs.src-xplm-nim-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xplm-nim-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xplm-nim-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xplm-nim-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}