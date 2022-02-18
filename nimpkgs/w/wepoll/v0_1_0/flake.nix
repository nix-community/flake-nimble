{
  description = ''Windows epoll wrapper.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wepoll-v0_1_0.flake = false;
  inputs.src-wepoll-v0_1_0.type = "github";
  inputs.src-wepoll-v0_1_0.owner = "xflywind";
  inputs.src-wepoll-v0_1_0.repo = "wepoll";
  inputs.src-wepoll-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wepoll-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wepoll-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wepoll-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}