{
  description = ''Very simple browser Javascript TTY web terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-webterminal-v0_0_1.flake = false;
  inputs.src-webterminal-v0_0_1.type = "github";
  inputs.src-webterminal-v0_0_1.owner = "JohnAD";
  inputs.src-webterminal-v0_0_1.repo = "webterminal";
  inputs.src-webterminal-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webterminal-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webterminal-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webterminal-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}