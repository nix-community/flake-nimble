{
  description = ''Astronomical library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-astronimy-master.flake = false;
  inputs.src-astronimy-master.type = "github";
  inputs.src-astronimy-master.owner = "super-massive-black-holes";
  inputs.src-astronimy-master.repo = "AstroNimy";
  inputs.src-astronimy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-astronimy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-astronimy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-astronimy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}