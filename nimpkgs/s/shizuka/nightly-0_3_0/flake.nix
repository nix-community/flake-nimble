{
  description = ''The Nim framework for VK API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shizuka-nightly-0_3_0.flake = false;
  inputs.src-shizuka-nightly-0_3_0.type = "github";
  inputs.src-shizuka-nightly-0_3_0.owner = "ethosa";
  inputs.src-shizuka-nightly-0_3_0.repo = "shizuka";
  inputs.src-shizuka-nightly-0_3_0.ref = "refs/tags/nightly-0.3.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shizuka-nightly-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-nightly-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shizuka-nightly-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}