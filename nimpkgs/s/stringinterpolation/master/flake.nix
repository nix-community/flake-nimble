{
  description = ''String interpolation with printf syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stringinterpolation-master.flake = false;
  inputs.src-stringinterpolation-master.type = "github";
  inputs.src-stringinterpolation-master.owner = "bluenote10";
  inputs.src-stringinterpolation-master.repo = "nim-stringinterpolation";
  inputs.src-stringinterpolation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stringinterpolation-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stringinterpolation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stringinterpolation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}