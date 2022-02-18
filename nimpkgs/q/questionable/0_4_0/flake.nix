{
  description = ''Elegant optional types'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-questionable-0_4_0.flake = false;
  inputs.src-questionable-0_4_0.type = "github";
  inputs.src-questionable-0_4_0.owner = "markspanbroek";
  inputs.src-questionable-0_4_0.repo = "questionable";
  inputs.src-questionable-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-questionable-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-questionable-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}