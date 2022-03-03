{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zfplugs-v0_0_5.flake = false;
  inputs.src-zfplugs-v0_0_5.type = "github";
  inputs.src-zfplugs-v0_0_5.owner = "zendbit";
  inputs.src-zfplugs-v0_0_5.repo = "nim.zfplugs";
  inputs.src-zfplugs-v0_0_5.ref = "refs/tags/v0.0.5";
  inputs.src-zfplugs-v0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zfcore".type = "github";
  # inputs."zfcore".owner = "riinr";
  # inputs."zfcore".repo = "flake-nimble";
  # inputs."zfcore".ref = "flake-pinning";
  # inputs."zfcore".dir = "nimpkgs/z/zfcore";
  # inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfplugs-v0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}