{
  description = ''A decentralized (pseudo) package manager and script runner.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nifty-v1_2_0.flake = false;
  inputs.src-nifty-v1_2_0.type = "github";
  inputs.src-nifty-v1_2_0.owner = "h3rald";
  inputs.src-nifty-v1_2_0.repo = "nifty";
  inputs.src-nifty-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nifty-v1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nifty-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}