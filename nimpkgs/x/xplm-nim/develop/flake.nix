{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xplm-nim-develop.flake = false;
  inputs.src-xplm-nim-develop.type = "github";
  inputs.src-xplm-nim-develop.owner = "jpoirier";
  inputs.src-xplm-nim-develop.repo = "xplm-Nim";
  inputs.src-xplm-nim-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xplm-nim-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xplm-nim-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xplm-nim-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}