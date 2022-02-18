{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hsluv-master.flake = false;
  inputs.src-hsluv-master.type = "github";
  inputs.src-hsluv-master.owner = "isthisnagee";
  inputs.src-hsluv-master.repo = "hsluv-nim";
  inputs.src-hsluv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hsluv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hsluv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hsluv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}