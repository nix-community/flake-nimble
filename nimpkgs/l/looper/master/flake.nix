{
  description = ''for loop macros'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-looper-master.flake = false;
  inputs.src-looper-master.type = "github";
  inputs.src-looper-master.owner = "planetis-m";
  inputs.src-looper-master.repo = "looper";
  inputs.src-looper-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-looper-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-looper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-looper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}