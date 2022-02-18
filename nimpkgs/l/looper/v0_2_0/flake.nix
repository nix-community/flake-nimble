{
  description = ''for loop macros'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-looper-v0_2_0.flake = false;
  inputs.src-looper-v0_2_0.type = "github";
  inputs.src-looper-v0_2_0.owner = "planetis-m";
  inputs.src-looper-v0_2_0.repo = "looper";
  inputs.src-looper-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-looper-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-looper-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-looper-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}