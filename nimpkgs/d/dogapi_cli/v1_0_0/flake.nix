{
  description = ''Tool to download dogs images'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dogapi_cli-v1_0_0.flake = false;
  inputs.src-dogapi_cli-v1_0_0.type = "github";
  inputs.src-dogapi_cli-v1_0_0.owner = "thexxiv";
  inputs.src-dogapi_cli-v1_0_0.repo = "dogapi-cli";
  inputs.src-dogapi_cli-v1_0_0.ref = "refs/tags/v1.0.0";
  inputs.src-dogapi_cli-v1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dogapi".type = "github";
  inputs."dogapi".owner = "riinr";
  inputs."dogapi".repo = "flake-nimble";
  inputs."dogapi".ref = "flake-pinning";
  inputs."dogapi".dir = "nimpkgs/d/dogapi";
  inputs."dogapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dogapi_cli-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dogapi_cli-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dogapi_cli-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}