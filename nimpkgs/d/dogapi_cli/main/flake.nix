{
  description = ''Tool to download dogs images'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dogapi_cli-main.flake = false;
  inputs.src-dogapi_cli-main.type = "github";
  inputs.src-dogapi_cli-main.owner = "thexxiv";
  inputs.src-dogapi_cli-main.repo = "dogapi-cli";
  inputs.src-dogapi_cli-main.ref = "refs/heads/main";
  inputs.src-dogapi_cli-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dogapi".type = "github";
  inputs."dogapi".owner = "riinr";
  inputs."dogapi".repo = "flake-nimble";
  inputs."dogapi".ref = "flake-pinning";
  inputs."dogapi".dir = "nimpkgs/d/dogapi";
  inputs."dogapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dogapi_cli-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dogapi_cli-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dogapi_cli-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}