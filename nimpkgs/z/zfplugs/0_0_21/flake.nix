{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfplugs-0_0_21.flake = false;
  inputs.src-zfplugs-0_0_21.type = "github";
  inputs.src-zfplugs-0_0_21.owner = "zendbit";
  inputs.src-zfplugs-0_0_21.repo = "nim.zfplugs";
  inputs.src-zfplugs-0_0_21.ref = "refs/tags/0.0.21";
  
  
  inputs."zfcore".type = "github";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".repo = "flake-nimble";
  inputs."zfcore".ref = "flake-pinning";
  inputs."zfcore".dir = "nimpkgs/z/zfcore";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfplugs-0_0_21, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-0_0_21;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-0_0_21"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}