{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zfplugs-v0_0_7.flake = false;
  inputs.src-zfplugs-v0_0_7.type = "github";
  inputs.src-zfplugs-v0_0_7.owner = "zendbit";
  inputs.src-zfplugs-v0_0_7.repo = "nim.zfplugs";
  inputs.src-zfplugs-v0_0_7.ref = "refs/tags/v0.0.7";
  inputs.src-zfplugs-v0_0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zfdbms".type = "github";
  # inputs."zfdbms".owner = "riinr";
  # inputs."zfdbms".repo = "flake-nimble";
  # inputs."zfdbms".ref = "flake-pinning";
  # inputs."zfdbms".dir = "nimpkgs/z/zfdbms";
  # inputs."zfdbms".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zfdbms".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."zfcore".type = "github";
  # inputs."zfcore".owner = "riinr";
  # inputs."zfcore".repo = "flake-nimble";
  # inputs."zfcore".ref = "flake-pinning";
  # inputs."zfcore".dir = "nimpkgs/z/zfcore";
  # inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."moustachu".type = "github";
  # inputs."moustachu".owner = "riinr";
  # inputs."moustachu".repo = "flake-nimble";
  # inputs."moustachu".ref = "flake-pinning";
  # inputs."moustachu".dir = "nimpkgs/m/moustachu";
  # inputs."moustachu".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."moustachu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfplugs-v0_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfplugs-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}