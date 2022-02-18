{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-translation-0_2_0.flake = false;
  inputs.src-translation-0_2_0.type = "github";
  inputs.src-translation-0_2_0.owner = "juancarlospaco";
  inputs.src-translation-0_2_0.repo = "nim-tinyslation";
  inputs.src-translation-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-translation-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-translation-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-translation-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}