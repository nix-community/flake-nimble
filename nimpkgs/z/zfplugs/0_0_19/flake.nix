{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zfplugs-0_0_19.flake = false;
  inputs.src-zfplugs-0_0_19.type = "github";
  inputs.src-zfplugs-0_0_19.owner = "zendbit";
  inputs.src-zfplugs-0_0_19.repo = "nim.zfplugs";
  inputs.src-zfplugs-0_0_19.ref = "refs/tags/0.0.19";
  inputs.src-zfplugs-0_0_19.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zfcore".type = "github";
  # inputs."zfcore".owner = "riinr";
  # inputs."zfcore".repo = "flake-nimble";
  # inputs."zfcore".ref = "flake-pinning";
  # inputs."zfcore".dir = "nimpkgs/z/zfcore";
  # inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfplugs-0_0_19, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-0_0_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-0_0_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}