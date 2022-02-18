{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xplm-nim-master.flake = false;
  inputs.src-xplm-nim-master.type = "github";
  inputs.src-xplm-nim-master.owner = "jpoirier";
  inputs.src-xplm-nim-master.repo = "xplm-Nim";
  inputs.src-xplm-nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xplm-nim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xplm-nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xplm-nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}